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
}


ThemeData appTheme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: BFEColors.NAVY
    )
  );
}