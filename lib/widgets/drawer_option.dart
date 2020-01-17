import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  final String navigateTo;
  final String title;


  const DrawerOption(this.navigateTo, this.title);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //TODO POP!
        Navigator.of(context).pushNamed(navigateTo);
      },
    child: Card(
      child: ListTile(
        title: Center(
          child: Text(title),
        )
      ),
    ),
  ); 
  }
}