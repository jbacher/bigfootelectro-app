import 'package:bigfoot_electro/theme/style.dart';
import 'package:bigfoot_electro/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:bigfoot_electro/models/info.dart';
import 'package:sticky_headers/sticky_headers.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoState();
  }
}

class _InfoState extends State<InfoScreen> {
  TextEditingController editingController = TextEditingController();

  List _currentFaqs = List();

  @override
  void initState() {
    _currentFaqs.addAll(faqs);
    super.initState();
  }
  
  void filterResults(String query) {
    List<QuestionAnswer> currentResults = List<QuestionAnswer>();

    if (query.isNotEmpty) {
      faqs.forEach( (item) {
        if (item.question.contains(query) || item.answer.contains(query)) {
          currentResults.add(item);
        }
      });
      setState(() {
        _currentFaqs.clear();
        _currentFaqs.addAll(currentResults);
      });
    } else {
      setState(() {
        _currentFaqs.clear();
        _currentFaqs.addAll(faqs);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: searchBar(filterResults)
        ),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: _currentFaqs.length,
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
                      child: Text(_currentFaqs[index].question,
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
                      child: Text(_currentFaqs[index].answer,
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
          ),

      ],
    );
  }

}

