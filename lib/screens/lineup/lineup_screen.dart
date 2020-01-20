import 'package:bigfoot_electro/theme/style.dart';
import 'package:bigfoot_electro/widgets/bfe_drawer.dart';
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

  List artistsList = <Artist> [
    Artist(name: "test"),
    Artist(name: "Vas Majority"),
    Artist(name: "Jake Bacher"),
    Artist(name: "Vas Majority"),
    Artist(name: "Jake Bacher"),
    Artist(name: "Vas Majority"),
    Artist(name: "Jake Bacher"),
    Artist(name: "Vas Majority"),
    Artist(name: "Jake Bacher"),
    Artist(name: "Vas Majority"),
    Artist(name: "Jake Bacher"),
    Artist(name: "Vas Majority"),
    Artist(name: "Jake Bacher")
  ];

class _LineupState extends State<LineupScreen> {
  int _currentIndex = 0;
  String _title = "Schedule";
  List artists = artistsList;

  final List<Widget> _children = [
    placeholderWidget(Colors.green),
    ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      itemBuilder: (context, index){
        return StickyHeader(
          header: Container(
            height: 20,
            color: Colors.grey, //pick a lighter gray to match bottom bar
            padding: EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: Text("header",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          content: Container(
            color: Colors.white,
            child: _ArtistListItem(artistsList[index]), 
          )
        );
      },
      itemCount: artistsList.length,
    )
  ];

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
            icon: Icon(Icons.menu),
            title: Text('Lineup')
          )
        ],
      ),
      drawer: BFEDrawer(),
      body: _children[_currentIndex],
    ); 
  }
}
