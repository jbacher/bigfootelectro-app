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
  _ArtistListItem(Artist artist, bool showLocation)
    : super(
      //Push specific artist screen
      // onTap: () => Navigator.of(context).push(main),
      title: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(artist.name.toUpperCase()),
            alignment: Alignment.centerLeft,
          ),
          showLocation ?         
            Row(
            children: <Widget>[
              Icon(Icons.location_on,
                color: Colors.grey,
              ),
              Text("Main Stage",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey
                ),
              )
            ],
          )
          : Row()
        ],
      ),  //TODO on schedule screen put location under artist name
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset('assets/images/gorilla_face_graphic.png',
        width: 45,
        height: 45,
        fit: BoxFit.fill,
        )));
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
  String _title = "SCHEDULE";
  
  String _currentArtistSelected = "";

  List _currentList = List();
  bool _isSearching = false;
  
  Map<String, List<Artist>> _alphabeticalArtists = SplayTreeMap<String, List<Artist>>();
  Map<DateTime, List<Artist>> _scheduleArtists = SplayTreeMap<DateTime, List<Artist>>();

  populateAlphbaeticalArtists() {
    artistsList.forEach((artist) {
      if (!_alphabeticalArtists.containsKey(artist.name[0])) {
        _alphabeticalArtists[artist.name[0]] = [];
      }
      _alphabeticalArtists[artist.name[0]].add(artist);

      artist.performanceTimes.forEach((time) {
        if (!_scheduleArtists.containsKey(time)) {
          _scheduleArtists[time] = [];
        }
        _scheduleArtists[time].add(artist);
      });
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
          return Column(
            children: <Widget>[
              Container(
              height: 20,
              color: Color(0xffF7F7F7), //pick a lighter gray to match bottom bar
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: Text(_alphabeticalArtists.keys.elementAt(index),
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              color: Colors.white,
              // child: _ArtistListItem(artistsList[index]),
              child: ListView.builder(
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
                        child: _ArtistListItem(_alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)][index2], false),
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
            ],
            
          );
        },
        itemCount: _alphabeticalArtists.keys.length,
        ),
      );
  }

  String _parseDayOfWeek(DateTime performanceTime) {
    switch (performanceTime.weekday) {
      case 1: return "Monday";
      case 2: return "Tuesday";
      case 3: return "Wednesday";
      case 4: return "Thursday";
      case 5: return "Friday";
      case 6: return "Saturday";
      case 7: return "Sunday";
      default: return "";
    }
  }

  String _parseMonth(DateTime performanceTime) {
    switch (performanceTime.month) {
      case 1: return "January"; 
      case 2: return "February";
      case 3: return "March";
      case 4: return "April";
      case 5: return "May";
      case 6: return "June";
      case 7: return "July";
      case 8: return "August";
      case 9: return "September";
      case 10: return "October";
      case 11: return "November";
      case 12: return "December";
      default: return "";
    }
  }

  Widget schedule() {

    List<int> dateCovered = List<int>();

    Widget _possibleDate(DateTime dateTime) {
    if (!dateCovered.contains(dateTime.day)) {
      dateCovered.add(dateTime.day);
      return SizedBox(
        width: double.infinity,
        child: 
        Container(
        color: Color(0xffF7F7F7),
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(_parseDayOfWeek(dateTime).toString() +", "+_parseMonth(dateTime)+" "+dateTime.day.toString(),
          style: TextStyle(
            fontSize: 40
          ),
        ),
      ),
      ); 
    } else {
      return Container();
    }
  }


    return Scrollbar(
        child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 8.0),
        itemBuilder: (context, index){
          return
            Column(children: <Widget>[
              _possibleDate(_scheduleArtists.keys.elementAt(index)),
              StickyHeader(
            header: Container(
              height: 20,
              color: Color(0xffF7F7F7), //pick a lighter gray to match bottom bar
              padding: EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              child: Text(formatText(_scheduleArtists.keys.elementAt(index)),
                style: const TextStyle(color: Colors.grey),
              ),
            ),
            content: Container(
              color: Colors.white,
              // child: _ArtistListItem(artistsList[index]),
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
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
                        child: _ArtistListItem(_scheduleArtists[_scheduleArtists.keys.elementAt(index)][index2], true),
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
          )
            ],
            ); 
            
        },
        itemCount: _scheduleArtists.keys.length,
        ),
      );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _title = index == 0 ? "SCHEDULE" : "LINEUP";
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
        backgroundColor: Color(0xffF7F7F7), //pick a lighter gray
        selectedItemColor: BFEColors.NAVY,
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
            // searchBar(null),
            Expanded(
              child: _currentIndex == 0 ? schedule() : lineup(),
            )
          ],
        ) 
    ); 
  }
}
