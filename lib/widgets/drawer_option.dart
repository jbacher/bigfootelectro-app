import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget {
  final String navigateTo;


  const DrawerOption(this.navigateTo);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(navigateTo);
      },
    child: Card(
      child: ListTile(
        title: Center(
          child: Text('test'),
        )
      ),
    ),
  ); 
  }
}