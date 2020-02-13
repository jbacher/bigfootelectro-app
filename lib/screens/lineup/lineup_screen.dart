import 'dart:collection';

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

  List _currentList = List();
  
  Map<String, List<Artist>> _alphabeticalArtists = SplayTreeMap<String, List<Artist>>();

  populateAlphbaeticalArtists() {
    artistsList.forEach((artist) {
      if (!_alphabeticalArtists.containsKey(artist.name[0])) {
        _alphabeticalArtists[artist.name[0]] = [];
      }
      _alphabeticalArtists[artist.name[0]].add(artist);
    });
    _alphabeticalArtists.forEach( (k,v) {
      v.sort((a,b) {
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });


    });
  } 

  @override initState() {
    _currentList.addAll(artistsList);
    populateAlphbaeticalArtists();
    super.initState();
  }

  List<Widget> _createScreens() {
    return [
      placeholderWidget(Colors.green),
      Scrollbar(
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
                  return Column(
                    children: <Widget> [
                      _ArtistListItem(_alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)][index2]),
                      index2 <  _alphabeticalArtists[_alphabeticalArtists.keys.elementAt(index)].length -1 ? Divider() : SizedBox.shrink() 
                    ]
                  );
                },
              ), 
            )
          );
        },
        itemCount: _alphabeticalArtists.keys.length,
        ),
      )
    ];
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
              child: _createScreens()[_currentIndex],
            )
          ],
        ) 
    ); 
  }
}
