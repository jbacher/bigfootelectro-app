import 'package:bigfoot_electro/theme/style.dart';
import 'package:bigfoot_electro/widgets/bfe_drawer.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sticky_headers/sticky_headers.dart';

Widget placeholderWidget(Color color) {
   return Container(
     color: color,
   );
}

class Artist {
  final String name;
  const Artist({this.name});
  //will have time at some point, and an image perhaps?
}

class _ArtistListItem extends ListTile {
  _ArtistListItem(Artist artist)
    : super(
      title: new Text(artist.name),
      subtitle: new Text(artist.name),
      leading: new CircleAvatar(child: new Text(artist.name[0])));
}

class LineupScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _LineupState();
  }
}

  List artistsList = <Artist> [
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
            color: Colors.grey,
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
      // body: Container(
      //   child: Center(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Container(
      //           height: 600,
      //           child: PhotoView(
      //             imageProvider: const AssetImage('assets/images/phase_one.jpeg'),                
      //           ), 
      //         )
      //       ],
      //     )
      //   ),
      // ),
    ); 
  }
}
