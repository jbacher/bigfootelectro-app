import 'package:bigfoot_electro/widgets/bfe_drawer.dart';
import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  MainScaffold(this.title, this.body);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
        centerTitle: true,
      ),
      drawer: BFEDrawer(),
      body: body
    ); 
  } 
}