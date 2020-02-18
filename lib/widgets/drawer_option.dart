import 'package:bigfoot_electro/theme/style.dart';
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
        shape: Border.all(
          color: BFEColors.MAROON
        ),
        color: Colors.transparent,
        child: ListTile(
          title: Center(
            child: Text(title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
          )
        ),
      ),
  ); 
  }
}