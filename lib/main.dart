import 'package:bigfoot_electro/screens/home/home_screen.dart';
import 'package:bigfoot_electro/screens/info/info_screen.dart';
import 'package:bigfoot_electro/screens/lineup/lineup_screen.dart';
import 'package:bigfoot_electro/screens/maps/map_screen.dart';
import 'package:bigfoot_electro/screens/notifications/notification_screen.dart';
import 'package:bigfoot_electro/screens/schedule/my_schedule_screen.dart';
import 'package:bigfoot_electro/theme/style.dart';
import 'package:bigfoot_electro/widgets/main_scaffold.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      initialRoute: '/',
      routes: {
        "/": (context) => MainScaffold("home", homeScreen()), //probably also ticket page for now, tickets link: https://www.mt.cm/bigfoot-electro-2020
        "/lineup": (context) => MainScaffold("lineup", lineupScreen()),
        "/myschedule": (context) => MainScaffold("my schedule", myScheduleScreen()),
        "/info": (context) => MainScaffold("info & faq", infoScreen()), //maybe call this info? 
        "/map": (context) => MainScaffold("home", mapScreen()),
        "/announcements": (context) => MainScaffold("announcements", notificationScreen())
      },
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
          child: Text("Foo"),
          onPressed: () => Navigator.pushNamed(context, "/"),
        ),
      );
  }
}