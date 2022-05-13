import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/menu/menu.dart';
import 'package:investors_lounge/static/screens/tabbar/market/indices.dart';
import 'package:investors_lounge/static/screens/tabbar/market/meetings.dart';
import 'package:investors_lounge/static/screens/tabbar/market/results.dart';
import 'package:investors_lounge/static/screens/tabbar/market/screener.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
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
                text: "Indices",
              ),
              Tab(
                text: "Screener",
              ),
              Tab(
                text: "Results",
              ),
              Tab(
                text: "Meetings",
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
              onPressed: () {  changeScreen(context, Menu());}),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff25cd9c),
                ),
                onPressed: () {}),
          ],
        ),
        body: TabBarView(
          children: [
            Indices(),
            Screener(),
            Results(),
            Meetings(),
            //Text("News"),
          ],
        ),
      ),
    );
  }
}
