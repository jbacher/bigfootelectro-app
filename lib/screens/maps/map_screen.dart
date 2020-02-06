import 'package:flutter/material.dart';

Widget mapScreen() {
  return Container(
    decoration: BoxDecoration(color: Colors.white),
    child: Center(
    //TODO crop right side of map images
      child: Image.asset('assets/images/festival_map.png'),
    ),
  );
}