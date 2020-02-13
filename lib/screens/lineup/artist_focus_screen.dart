import 'package:bigfoot_electro/models/artist.dart';
import 'package:flutter/material.dart';

class ArtistFocusScreen extends StatefulWidget {
  final Artist artist; 

  const ArtistFocusScreen(this.artist);
  
  @override
  State<StatefulWidget> createState() {
    return _ArtistFocusState();
  }
}

class _ArtistFocusState extends State<ArtistFocusScreen> {
  // Artist _artist = widget.artist;

  @override
  Widget build(BuildContext context) {
    // return Text(widget.artist.name);
    print("hithere "+widget.artist.name);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.artist.name), //im considering overlaying over picture like lost lands app
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget> [
          Image.asset('assets/images/gorilla_face_graphic.png'),
          Container(
            //some padding needed
            child: Text(widget.artist.performanceTime.toString()),
          ),
          Column(
            children: <Widget>[
              Container(
            // decoration: BoxDecoration(
            //   border: Border(bottom: BorderSide())
            // ),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Facebook"),
                  trailing: Icon(Icons.navigate_next),
                  leading: CircleAvatar(child: Image.asset('assets/images/icon_facebook.png')),
                ),
                Divider(),
              ],
            ) 
          ),
          Container(
            // decoration: BoxDecoration(
            //   border: Border(bottom: BorderSide())
            // ),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Instagram"),
                  trailing: Icon(Icons.navigate_next),
                  leading: CircleAvatar(child: Image.asset('assets/images/icon_instagram.png')),
                ),
                Divider(),
              ],
            ) 
          ),
          Container(
            // decoration: BoxDecoration(
            //   border: Border(bottom: BorderSide())
            // ),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Twitter"),
                  trailing: Icon(Icons.navigate_next),
                  leading: CircleAvatar(child: Image.asset('assets/images/icon_twitter.png')),
                ),
                Divider(),
              ],
            ) 
          ),
          Container(
            // decoration: BoxDecoration(
            //   border: Border(bottom: BorderSide())
            // ),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("SoundCloud"),
                  trailing: Icon(Icons.navigate_next),
                  leading: CircleAvatar(child: Image.asset('assets/images/icon_soundcloud.png')),
                ),
                Divider(),
              ],
            ) 
          ),
          Container(
            // decoration: BoxDecoration(
            //   border: Border(bottom: BorderSide())
            // ),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Website"),
                  trailing: Icon(Icons.navigate_next),
                  leading: CircleAvatar(child: Image.asset('assets/images/icon_web.png')),
                ),
                Divider(),
              ],
            ) 
          ),
            ],
          )
        ]
      ),
    );
  }
}