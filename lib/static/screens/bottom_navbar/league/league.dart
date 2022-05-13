import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/bottom_navbar/league/education_league.dart';
import 'package:investors_lounge/static/screens/menu/menu.dart';
import 'package:investors_lounge/static/screens/tabbar/league/active_league.dart';
import 'package:investors_lounge/static/screens/tabbar/league/upcoming_league.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class League extends StatefulWidget {
  @override
  _LeagueState createState() => _LeagueState();
}

class _LeagueState extends State<League> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CupertinoColors.white,
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelColor: primary,
            labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle: TextStyle(fontSize: 17.sp),
            indicatorColor: primary,
            indicatorPadding: EdgeInsets.symmetric(
                vertical: height * 0.01, horizontal: width * 0.03),
            labelPadding: EdgeInsets.symmetric(horizontal: width * 0.05),
            tabs: [
              Tab(
                text: "Active Leagues",
              ),
              Tab(
                text: "Upcoming Leagues",
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
                onPressed: () {}),
          ],
        ),
        body: TabBarView(
          children: [
            ActiveLeague(),
            UpcomingLeague(),

            //Text("News"),
          ],
        ),
      ),
    );
  }
}
