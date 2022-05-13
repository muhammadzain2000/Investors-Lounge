import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/widgets/news/card_all_news.dart';
import 'package:investors_lounge/static/widgets/news/card_tribune.dart';

//import 'package:investors_lounge/static/screens/tabbar/news/news_view.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/widgets/news_and_research/news_list.dart';
import 'package:investors_lounge/static/widgets/news/news_list.dart';

class TribuneListItems extends StatefulWidget {
  @override
  _ListItemsAllNewsState createState() => _ListItemsAllNewsState();
}

class _ListItemsAllNewsState extends State<TribuneListItems> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<Widget> items = [
      TribuneCard(
        imagePath: "images/test.jpg",
        title: "Gas pipeline Projects among PM's Russia visit agenda",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        time: "51M",
        onclick: () {},
      ),
      TribuneCard(
        imagePath: "images/export_resize.png",
        title: "Exports projected to hit \$38 billion",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        time: "50M",
        onclick: () {},
      ),
      TribuneCard(
        imagePath: "images/punjab.png",
        title: "Punjab for increasing subsidy on Kissan Cards",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        time: "50M",
        onclick: () {},
      ),
      TribuneCard(
        imagePath: "images/punjab2.png",
        title: "Punjab for increasing subsidy on Kissan Cards",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        time: "50M",
        onclick: () {},
      ),
      TribuneCard(
        imagePath: "images/energy.jpg",
        title: "Time to conserve energy on a national level",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        time: "50M",
        onclick: () {},
      ),
      TribuneCard(
        imagePath: "images/uae.jpg",
        title: "UAE warns of drone threat as it opens",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",


        time: "50M",

        onclick: () {},
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return items[index];
              // );
            }),
      ),
    );
  }
}
