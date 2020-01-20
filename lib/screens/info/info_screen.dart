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
                color: BFEColors.MAROON,
                child: Text(faqs[index].question,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                child: Text(faqs[index].answer,
                  style: TextStyle(
                    color: Colors.white
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

