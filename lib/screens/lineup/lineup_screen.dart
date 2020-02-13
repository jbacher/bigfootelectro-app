import 'dart:collection';

import 'package:bigfoot_electro/screens/lineup/artist_focus_screen.dart';
import 'package:bigfoot_electro/theme/style.dart';
import 'package:bigfoot_electro/widgets/bfe_drawer.dart';
import 'package:bigfoot_electro/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:bigfoot_electro/models/artist.dart';

Widget placeholderWidget(Color color) {
   return Container(
     color: color,
   );
}

class _ArtistListItem extends ListTile {
  _ArtistListItem(Artist artist)
    : super(
      //Push specific artist screen
      // onTap: () => Navigator.of(context).push(main),
      title: new Text(artist.name.toUpperCase()),
      leading: CircleAvatar(child: Image.asset('assets/images/gorilla_face_graphic.png')));
      // leading: new CircleAvatar(child: new Text(artist.name[0])));
}

class LineupScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _LineupState();
  }
}

class _LineupState extends State<LineupScreen> {
  int _currentIndex = 0;
  String _title = "Schedule";
  
  String _currentArtistSelected = "";

  List _currentList = List();
  
  Map<String, List<Artist>> _alphabeticalArtists = SplayTreeMap<String, List<Artist>>();
  Map<DateTime, List<Artist>> _scheduleArtists = SplayTreeMap<DateTime, List<Artist>>();

  populateAlphbaeticalArtists() {
    artistsList.forEach((artist) {
      if (!_alphabeticalArtists.containsKey(artist.name[0])) {
        _alphabeticalArtists[artist.name[0]] = [];
      }
      _alphabeticalArtists[artist.name[0]].add(artist);

      if (!_scheduleArtists.containsKey(artist.performanceTime)) {
        _scheduleArtists[artist.performanceTime] = [];
      }
      _scheduleArtists[artist.performanceTime].add(artist);
    });

    
    
    _alphabeticalArtists.forEach( (k,v) {
      v.sort((a,b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    });

    _scheduleArtists.forEach( (k,v) {
      v.sort((a,b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    });
  } 

  String formatText(DateTime dateTime) {
    String sussex = dateTime.hour < 12 ? " AM": " PM";  //check logic on this to be sure
    String minuteText; 
    String hourText;
    switch (dateTime.minute) {
      case 0:
        minuteText = "00";
        break;
      default:
        minuteText = dateTime.minute.toString(); 
    }

    switch (dateTime.hour % 12) {
      case 0: 
        hourText = "12";
        break;
      default:
        hourText = (dateTime.hour % 12).toString(); 
    }
    return hourText + ":" + minuteText + sussex;
  }

  void updateSelected(String selected) {
    setState(() {
      _currentArtistSelected =  selected;
    });
  }

  @override initState() {
    _currentList.addAll(artistsList);
    populateAlphbaeticalArtists();
    super.initState();
  }

  Widget lineup() {
    return Scrollbar(
        child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 8.0),
        itemBuilder: (context, index){
          return StickyHeader(
            header: Container(
              height: 20,
              color: Colors.grey, //pick a lighter gray to match bottom bar
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: Text(_alphabeticalArtists.keys.elementAt(index),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            content: Container(
              color: Colors.white,
              // child: _ArtistListItem(artistsList[index]),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)].length,
                itemBuilder: (context, index2) {
                  return Container (
                    decoration: BoxDecoration(
                      color: _currentArtistSelected == _alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)][index2].name ? Colors.grey : Colors.white 
                    ),
                    child: Column(
                    children: <Widget> [
                      GestureDetector(
                        child: _ArtistListItem(_alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)][index2]),
                        onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ArtistFocusScreen(_alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)][index2])
                          ));
                        },
                        onTapDown: (details) { //change the color to gray
                          updateSelected(_alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)][index2].name);
                        },
                        onVerticalDragStart: (details) {
                          updateSelected("");
                        },
                        onTapUp: (details) {
                          updateSelected("");
                        },
                      ),
                      index2 <  _alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)].length -1 ? Divider() : SizedBox.shrink() 
                    ]
                  ),
                  );      
                },
              ), 
            )
          );
        },
        itemCount: _alphabeticalArtists.keys.length,
        ),
      );
  }

  Widget schedule() {
    return Scrollbar(
        child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 8.0),
        itemBuilder: (context, index){
          return StickyHeader(
            header: Container(
              height: 20,
              color: Colors.grey, //pick a lighter gray to match bottom bar
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: Text(formatText(_scheduleArtists.keys.elementAt(index)),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            content: Container(
              color: Colors.white,
              // child: _ArtistListItem(artistsList[index]),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _scheduleArtists[_scheduleArtists.keys.elementAt(index)].length,
                itemBuilder: (context, index2) {
                  return Container(
                    decoration: BoxDecoration(
                      color: _currentArtistSelected == _scheduleArtists[_scheduleArtists.keys.elementAt(index)][index2].name ? Colors.grey : Colors.white
                    ),
                    child: Column(
                    children: <Widget> [
                      GestureDetector(
                        child: _ArtistListItem(_scheduleArtists[_scheduleArtists.keys.elementAt(index)][index2]),
                        onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ArtistFocusScreen(_scheduleArtists[_scheduleArtists.keys.elementAt(index)][index2])
                          ));
                        },
                        onTapDown: (details) { //change the color to gray
                          updateSelected(_scheduleArtists[_scheduleArtists.keys.elementAt(index)][index2].name);
                        },
                        onVerticalDragStart: (details) {
                          updateSelected("");
                        },
                        onTapUp: (details) {
                          updateSelected("");
                        },
                      ),
                      index2 <  _scheduleArtists[_scheduleArtists.keys.elementAt(index)].length -1 ? Divider() : SizedBox.shrink() 
                    ]
                  ),
                  );
                },
              ), 
            )
          );
        },
        itemCount: _scheduleArtists.keys.length,
        ),
      );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _title = index == 0 ? "Schedule" : "Lineup";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey, //pick a lighter gray
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            title: Text('Schedule')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Lineup')
          )
        ],
      ),
      drawer: BFEDrawer(),
      body:  Column(
          children: <Widget>[
            //TODO: search bar might not be needed as the plan is to have alphabetical scrolling!
            searchBar(null),
            Expanded(
              child: _currentIndex == 0 ? schedule() : lineup(),
            )
          ],
        ) 
    ); 
  }
}
