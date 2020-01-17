import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class LineupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 600,
              child: PhotoView(
                imageProvider: const AssetImage('assets/images/phase_one.jpeg'),                
              ), 
            )
          ],
        )
      ),
    ); 
  }
}