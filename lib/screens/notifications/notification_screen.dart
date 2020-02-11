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
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Column(
             children: <Widget>[
               Padding(
                padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: Text(notifications[index].title,
                  style: TextStyle(
                    height: 1.5
                  ) 
                ),
               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(1,5,20,5),
                 child: Text(notifications[index].timeSent.toString()),
               ),
               Divider(),
             ]
          );
        },
      ),
    );
  }
}