import 'package:flutter/material.dart';

//Colors
class BFEColors {
  static const YELLOW = Color(0xffd4c224);
  static const BEIGE = Color(0xffb59e2e);
  static const BROWN = Color(0xffb46a2d);
  static const MAROON = Color(0xffb52d2d);
  static const PURPLE = Color(0xffb62d65);
  static const VIOLET = Color(0xffb52d99);
  static const NAVY = Color(0xff0A203A);
  static const DARK_NAVY = Color(0xff06172B); 
}


ThemeData appTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: BFEColors.NAVY,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      textTheme: TextTheme(
        body1: TextStyle(color: Colors.white)
      )
    ),
    primaryTextTheme: TextTheme(
      title: TextStyle(
        color: Colors.white
      )
    ),
    // textTheme: TextTheme(
    //   body1: TextStyle(color: Colors.white)
    // ),
    primaryColor: Colors.white,
    canvasColor: BFEColors.NAVY,
    buttonTheme: ButtonThemeData(
      buttonColor: BFEColors.NAVY,
      textTheme: ButtonTextTheme.primary
    )
  );
}