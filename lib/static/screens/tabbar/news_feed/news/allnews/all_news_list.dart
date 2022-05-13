import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/widgets/news/card_all_news.dart';

//import 'package:investors_lounge/static/screens/tabbar/news/news_view.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/widgets/news_and_research/news_list.dart';
import 'package:investors_lounge/static/widgets/news/news_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'news_view.dart';

class ListItems extends StatefulWidget {
  @override
  _ListItemsAllNewsState createState() => _ListItemsAllNewsState();
}

class _ListItemsAllNewsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    List<Widget> items = [
      NewsCard(
        imagePath: "images/test.jpg",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        title: "Gas pipeline Projects among PM's Russia visit agenda",
        news: "The Tribune Express",
        time: "51M",
        newslogo: "images/news/Tribune.png",
        onclick: () {
          changeScreen(context, NewsView());
        },
      ),
      NewsCard(
        imagePath: "images/export_resize.png",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        title: "Exports projected to hit \$38 billion",
        news: "The Tribune Express",
        time: "50M",
        newslogo: "images/news/Tribune.png",
        onclick: () {changeScreen(context, NewsView());},
      ),
      NewsCard(
        imagePath: "images/punjab.png",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        newslogo: "images/news/Tribune.png",
        title: "Punjab for increasing subsidy on Kissan Cards",
        news: "The Tribune Express",
        time: "50M",
        onclick: () {changeScreen(context, NewsView());},
      ),
      NewsCard(
        imagePath: "images/punjab2.png",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        title: "Punjab for increasing subsidy on Kissan Cards",
        news: "The Tribune Express",
        newslogo: "images/news/Tribune.png",
        time: "50M",
        onclick: () {changeScreen(context, NewsView());},
      ),
      NewsCard(
        imagePath: "images/energy.jpg",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        title: "Time to conserve energy on a national level",
        news: "The Tribune Express",
        newslogo: "images/news/Tribune.png",
        time: "50M",
        onclick: () {changeScreen(context, NewsView());},
      ),
      NewsCard(
        imagePath: "images/uae.jpg",
        subtitle: "A brief description of the news A brief description of the news A brief description of the news A brief description of the news",
        title: "UAE warns of drone threat as it opens",
        news: "The Tribune Express",
        time: "50M",
        newslogo: "images/news/Tribune.png",
        onclick: () {changeScreen(context, NewsView());},
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return items[index];
            }),
      ),
    );
  }
}
