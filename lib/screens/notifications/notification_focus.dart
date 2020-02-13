//screen should have back arrow instead of hamburger menu

import 'package:flutter/material.dart';
import 'package:bigfoot_electro/models/notification.dart';

Widget notificationFocus(Announcement announcement) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Announcement"),
      centerTitle: true,
    ),
    backgroundColor: Colors.white,
    body: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: Text(announcement.timeSent.toString(),
            textAlign: TextAlign.left,
          ), 
        ),
        Divider(),
        Container(
          child: Text(announcement.title),
        ),
        Container(
          child: Text(announcement.message),
        )        
      ],
    ),
  );
}