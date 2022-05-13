import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/gainers.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/losers.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/overview.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/value_leaders.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/volume_leaders.dart';
//import 'package:investors_lounge/static/screens/tabbar/indices/nested_tab.dart';

class IndicesView extends StatefulWidget {
  @override
  _IndicesViewState createState() => _IndicesViewState();
}

class _IndicesViewState extends State<IndicesView> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: primary,
          //change your color here
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xff25cd9c),
              ),
              onPressed: () {}),
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KSE100",
              style: TextStyle(
                  color: primary, fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            Text(
              "KSE100Index",
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                Icon(
                  Icons.arrow_upward,
                  size: 20.sp,
                  color: primary,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  "32,235.65",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "56.02 (+36.2%)",
                  style: TextStyle(color: primary, fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.1,
                ),
                Icon(
                  Icons.access_time,
                  color: Colors.redAccent,
                  size: 17,
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  "Feb, 21 2022 4:14 pm",
                  style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            DefaultTabController(
                length: 5, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          isScrollable: true,
                          labelColor: primary,
                          labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                          unselectedLabelColor: Colors.black54,
                          unselectedLabelStyle: TextStyle(fontSize: 17.sp),
                          indicatorColor: primary,
                          indicatorPadding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.03),
                          labelPadding: EdgeInsets.symmetric(horizontal:width*0.03),
                          tabs: [
                            Tab(text: 'Overview'),
                            Tab(text: 'Volume Leaders'),
                            Tab(text: 'Gainers'),
                            Tab(text: 'Losers'),
                            Tab(text: 'Value Leaders'),
                          ],
                        ),
                      ),
                      Container(
                        height: height*1,
                        child: TabBarView(children: <Widget>[
                          Overview(),
                          VolumeLeaders(),
                          Gainers(),
                          Losers(),
                          ValueLeaders(),
                        ]),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
