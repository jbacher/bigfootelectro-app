import 'package:bigfoot_electro/models/artist.dart';
import 'package:bigfoot_electro/theme/style.dart';
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

  String parseDayOfWeek(DateTime performanceTime) {
    switch (performanceTime.day) {
      case 22: return "FRIDAY";
      case 23: return "SATURDAY";
      case 24: return "SUNDAY";
      default: return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    // return Text(widget.artist.name);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.artist
            .name), //im considering overlaying over picture like lost lands app
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(children: <Widget>[
        Image.asset('assets/images/gorilla_face_graphic.png'),
        DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: Color(0xffF7F7F7), 
                ),
                child: TabBar(tabs: [
                  Tab(text: "Schedule"),
                  Tab(text: "About"),
                ],
                labelColor: BFEColors.NAVY,
                indicatorColor: BFEColors.NAVY,
                ),
                ),
                Container(
                  height: 400,
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        //some padding needed
                        child: ListView.builder(
                          itemCount: this.widget.artist.performanceTimes.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget> [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget> [
                                          Row(
                                            children: <Widget>[
                                              Padding (
                                                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                                child: Text(
                                                parseDayOfWeek(this.widget.artist.performanceTimes[index]),
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                                ),
                                              ),
                                              ),
                                              
                                              Text(
                                                "MAY " + this.widget.artist.performanceTimes[index].day.toString(),
                                                style: TextStyle(
                                                  fontSize: 20
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                                child: Icon(Icons.access_time,
                                              ),
                                              ),
                                              Text("5:50 PM",
                                                style: TextStyle(
                                                  fontSize: 20
                                                ),
                                              )
                                            ],
                                          )
                                        ]
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: BFEColors.NAVY
                                        ),
                                        padding: EdgeInsets.only(left: 0, right: 0),
                                        child: RaisedButton(
                                          onPressed: null,
                                          // shape: RoundedRectangleBorder(
                                          //   borderRadius: BorderRadius.circular(30.0)
                                          // ),
                                          child: Column(
                                            children: <Widget>[ Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: <Widget> [
                                                Icon(Icons.add_circle, color: Colors.white),
                                                Column(
                                                  children: <Widget>[
                                                    Text("ADD TO",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                    Text("SCHEDULE",
                                                      style: TextStyle(
                                                        color: Colors.white
                                                      ),
                                                    ),
                                                  ]
                                                )
                                              ]
                                            ),
                                            ]
                                          ),
                                        )
                                      ),
                                    ]
                                  )
                                ),
                                // ListTile(
                                //   leading: Icon(Icons.location_on),
                                //   title: Text(this.widget.artist.stage),
                                // ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.grey),
                                      top: BorderSide(color: Colors.grey)
                                    ),
                                    color: Color(0xffF7F7F7),
                                  ),
                                  child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                                      child: Icon(Icons.location_on,
                                    ),
                                    ),
                                    Text("Main Stage",
                                      style: TextStyle(
                                        fontSize: 14
                                      ),
                                    )
                                  ],
                                ),
                                ),
                                // Divider(),
                                Container(
                                  // child: Center(
                                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey,
                                          width: 4.0
                                        ),
                                      ),
                                      color: Color(0xffF7F7F7)
                                    ),
                                    child: Row(children: <Widget>[
                                      Icon(Icons.notifications),
                                      Text("SET ALERT")                                    
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    ),  
                                  // )
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                  color: Color(0xffF7F7F7)
                                )
                              ],
                            );
                          },
                        )
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
                                leading: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/icon_facebook.png')),
                              ),
                              Divider(),
                            ],
                          )),
                          Container(
                              // decoration: BoxDecoration(
                              //   border: Border(bottom: BorderSide())
                              // ),
                              child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text("Instagram"),
                                trailing: Icon(Icons.navigate_next),
                                leading: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/icon_instagram.png')),
                              ),
                              Divider(),
                            ],
                          )),
                          Container(
                              // decoration: BoxDecoration(
                              //   border: Border(bottom: BorderSide())
                              // ),
                              child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text("Twitter"),
                                trailing: Icon(Icons.navigate_next),
                                leading: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/icon_twitter.png')),
                              ),
                              Divider(),
                            ],
                          )),
                          Container(
                              // decoration: BoxDecoration(
                              //   border: Border(bottom: BorderSide())
                              // ),
                              child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text("SoundCloud"),
                                trailing: Icon(Icons.navigate_next),
                                leading: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/icon_soundcloud.png')),
                              ),
                              Divider(),
                            ],
                          )),
                          Container(
                              // decoration: BoxDecoration(
                              //   border: Border(bottom: BorderSide())
                              // ),
                              child: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text("Website"),
                                trailing: Icon(Icons.navigate_next),
                                leading: CircleAvatar(
                                    child: Image.asset(
                                        'assets/images/icon_web.png')),
                              ),
                              Divider(),
                            ],
                          )),
                        ],
                      )
                    ],
                  ),
                ) 
              ],
            )),
      ]),
    );
  }
}
