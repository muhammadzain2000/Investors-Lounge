import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/search/search.dart';
import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/menu/menu.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/exclusive/exclusive.dart';
import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/news_feed/filings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/news/news.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/research/research.dart';
import 'package:investors_lounge/static/screens/tabbar/news_feed/exclusive/exclusive.dart';
import 'package:investors_lounge/static/screens/tabbar/news_feed/news/news.dart';
import 'package:investors_lounge/static/screens/tabbar/news_feed/research/research.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelColor: primary,
            labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle: TextStyle(fontSize: 17.sp),
            indicatorColor: primary,
            indicatorPadding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.03),
            labelPadding: EdgeInsets.symmetric(horizontal:width*0.05),
            tabs: [
              Tab(
                text: "News",
              ),
              Tab(
                text: "Research",
              ),
              Tab(
                text: "Filings",
              ),
              Tab(
                text: "Exclusive",
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xff25cd9c),
              ),
              onPressed: () {
                changeScreen(context, Menu());
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff25cd9c),
                ),
                onPressed: () {changeScreen(context, SearchBar());}),
          ],
        ),
        body: TabBarView(
          children: [
            News(),
            Research(),
            Filings(),
            Exclusive(),
            //Text("News"),
          ],
        ),
      ),
    );
  }
}
