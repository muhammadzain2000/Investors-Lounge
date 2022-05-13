import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/menu/menu.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/overview.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/league_info/league_info.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/league_info/positions.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/league_info/transactions.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/overview.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/ranking.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class EducationLeagueView extends StatefulWidget {
  @override
  _EducationLeagueViewState createState() => _EducationLeagueViewState();
}

class _EducationLeagueViewState extends State<EducationLeagueView> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelColor: primary,
            labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 17.sp),
            indicatorColor: primary,
            indicatorPadding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.03),
            labelPadding: EdgeInsets.symmetric(horizontal:width*0.03),
            tabs: [
              Tab(
                text: "League info",
              ),
              Tab(
                text: "Ranking",
              ),
              Tab(
                text: "Overview",
              ),
              Tab(
                text: "Positions",
              ),
              Tab(
                text: "Transactions",
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
           LeagueInfo(),
            Ranking(),
            LeagueOverview(),
            Positions(),
            Transactions(),
            //Text("News"),
          ],
        ),
      ),
    );
  }
}
