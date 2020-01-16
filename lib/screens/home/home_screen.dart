import 'package:flutter/material.dart';

Widget homeScreen() {
  return Container(
    child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/background.jpg'),
            RaisedButton(
              // padding: EdgeInsets.all(10),
              onPressed: null,
              // color: BFEColors.BEIGE,
              // splashColor: BFEColors.YELLOW,
              child: Text('Get your Tickets Now!'),
            ),
          ],
        ),
      ),
  );
}