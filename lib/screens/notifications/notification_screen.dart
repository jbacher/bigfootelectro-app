import 'package:flutter/material.dart';
import 'package:bigfoot_electro/models/notification.dart'; //will be replaced with loaded data from phone

//Tapping on a notification will push a screen not navigate to named route

class NotificationScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _NotificationState(); 
  }
}

class _NotificationState extends State<NotificationScreen> {
  
  int _currentlySelected = -1;

  void updateSelected(int selected) {
    setState(() {
      _currentlySelected = selected;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {

            },
            onTapDown: (details) { //change the color to gray
              updateSelected(index);
            },
            onVerticalDragStart: (details) {
             updateSelected(-1);
            },
            onTapUp: (details) {
             updateSelected(-1);
            },
            child: Container(
              decoration: new BoxDecoration (
                color: index == _currentlySelected ? Colors.grey : Colors.white, 
             ),
             child: Column(
              children: <Widget>[
                Padding(
                 padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                 child: Text(notifications[index].title,
                   style: TextStyle(
                     height: 1.5
                   ) 
                 ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(25,5,20,5),
                  alignment: Alignment.centerLeft,
                  child: Text(notifications[index].timeSent.toString(),
                  textAlign: TextAlign.left,
                   style: TextStyle(
                     color: Colors.black.withOpacity(0.6)
                   ),
                  ),
                ),
                Divider(),
              ]
             ),
            ),
          ); 
        },
      ),
    );
  }
}