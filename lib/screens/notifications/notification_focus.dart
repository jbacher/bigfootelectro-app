//screen should have back arrow instead of hamburger menu

import 'package:flutter/material.dart';
import 'package:bigfoot_electro/models/notification.dart';

Widget notificationFocus(Announcement announcement) {

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

  String _formatText(DateTime dateTime) {
    return _parseDayOfWeek(dateTime)+", " + _parseMonth(dateTime) + " "+ dateTime.day.toString();
  }

  return Scaffold(
    appBar: AppBar(
      title: Text("Announcement"),
      centerTitle: true,
    ),
    backgroundColor: Colors.white,
    body: 
      Padding(padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: Text(_formatText(announcement.timeSent),
                textAlign: TextAlign.left,
              ), 
            ),
            Divider(),
            Container(
              child: Text(announcement.title,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              child: Text(announcement.message),
            )        
          ],
        ),
      )
    
  );
}