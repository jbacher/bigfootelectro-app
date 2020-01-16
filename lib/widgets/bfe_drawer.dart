import 'package:bigfoot_electro/widgets/drawer_option.dart';
import 'package:flutter/material.dart';

Widget bfeDrawer () {
  return Drawer(
        //THIS WILL BE CONVERTED TO A SEPARATE WIDGET
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              //This will be moved to its own widget potentially AND MAKE IT CLICKABLE
              child: Image.asset('assets/images/gorilla_face_outline.png'),
            ),
            DrawerOption('/lineup'),
            DrawerOption('/myschedule'),
            DrawerOption("/info"),
            DrawerOption('/announcements'),
            // drawerOption(context, "SOCIAL")
            DrawerOption('/map'),
            // drawerOption(context, "POINTS OF INTEREST"),
          ],
        ),
      );
}

  // "/": (BuildContext context) => mainScaffold(context, "home", homeScreen(context)), //probably also ticket page for now, tickets link: https://www.mt.cm/bigfoot-electro-2020
  // "/lineup": (BuildContext context) => mainScaffold(context, "lineup", lineupScreen(context)),
  // "/myschedule": (BuildContext context) => mainScaffold(context, "my schedule", myScheduleScreen(context)),
  // "/info": (BuildContext context) => mainScaffold(context, "info & faq", infoScreen(context)), //maybe call this info? 
  // "/map": (BuildContext context) => mainScaffold(context, "home", mapScreen(context)),
  // "/announcements": (BuildContext context) => mainScaffold(context, "announcements", notificationScreen(context))