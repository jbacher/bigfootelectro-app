import 'package:bigfoot_electro/screens/notifications/notification_focus.dart';
import 'package:flutter/material.dart';
import 'package:bigfoot_electro/models/notification.dart'; //will be replaced with loaded data from phone

//Tapping on a notification will push a screen not navigate to named route

class AnnouncementScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _AnnouncementState(); 
  }
}

class _AnnouncementState extends State<AnnouncementScreen> {
  
  int _currentlySelected = -1;

  void updateSelected(int selected) {
    setState(() {
      _currentlySelected = selected;
    });
  }

  String parseDateTime(DateTime dateTime) {
    String result = "";
    result += dateTime.month.toString()+ "/" + dateTime.day.toString()+ "/" + (dateTime.year % 100).toString() + " - ";
    result += dateTime.hour % 12 == 0 ? "12": dateTime.hour.toString();
    result += ":";
    result += dateTime.minute == 0 ? "00" : dateTime.minute.toString();
    result += dateTime.hour < 12 ? " AM" : " PM" ;

    return result;
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
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => notificationFocus(notifications[index]))
             );
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
                  child: Text(parseDateTime(notifications[index].timeSent),
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