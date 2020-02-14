import 'package:bigfoot_electro/widgets/drawer_option.dart';
import 'package:flutter/material.dart';

class BFEDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        //THIS WILL BE CONVERTED TO A SEPARATE WIDGET
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: GestureDetector(
              onTap: () {
                //TODO POP!
                Navigator.of(context).pushNamed('/');
              },
              child: Image.asset('assets/images/gorilla_face_outline.png'),
            )
          ),
          DrawerOption('/lineup', 'LINEUP & SCHEDULE'),
          SizedBox(height: 15),
          DrawerOption('/myschedule', 'MY SCHEDULE'),
          SizedBox(height: 15),
          DrawerOption("/info", 'INFO & FAQ'),
          SizedBox(height: 15),
          DrawerOption('/announcements', 'ANNOUNCEMENTS'),
          SizedBox(height: 15),
          // drawerOption(context, "SOCIAL")
          DrawerOption('/groundsmap', 'GROUNDS MAP'),
          SizedBox(height: 15),
          DrawerOption('/campingmap', 'CAMPING MAP')
          // DrawerOption('/contact', 'CONTACT US'),
          // TODO potentially put image and lower the heigh so it does not scroll
          // Image.asset('assets/images/gorilla_dab.png')
          // drawerOption(context, "POINTS OF INTEREST"),
        ],
      ),
    );
  }
}