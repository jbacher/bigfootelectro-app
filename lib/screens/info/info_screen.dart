import 'package:bigfoot_electro/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:bigfoot_electro/models/info.dart';
import 'package:sticky_headers/sticky_headers.dart';

class InfoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: faqs.length,
      itemBuilder: (context, index){
        return Container(
          color: index % 2 == 0 ? BFEColors.DARK_NAVY : BFEColors.NAVY,
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                padding: EdgeInsets.all(20),
                color: BFEColors.MAROON,
                child: Text(faqs[index].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    // fontFamily: 'Oswald',
                    fontWeight: FontWeight.w700,
                    fontSize: 30
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Text(faqs[index].answer,
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 20
                  ),
                ),
              )
            ],
          ),
          // children:  StickyHeader(
          //   header: Container(
          //     child: Text(faqs[index].question),
          //   ),
          //   content: Container(
          //     color: BFEColors.DARK_NAVY,
          //     child: Text(faqs[index].answer),
          //   ),
          // ),
        );
      },
    );
  }
}

