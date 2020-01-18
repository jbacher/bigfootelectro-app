import 'package:bigfoot_electro/widgets/bfe_drawer.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

Widget placeholderWidget(Color color) {
   return Container(
     color: color,
   );
}

class LineupScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _LineupState();
  }
}



class _LineupState extends State<LineupScreen> {
  int _currentIndex = 0;
 final List<Widget> _children = [
    placeholderWidget(Colors.green),
    placeholderWidget(Colors.black)
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LINEUP'),
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
