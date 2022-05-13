import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/widgets/watchlist/watchlist_view_list_tile.dart';

class WatchListView extends StatefulWidget {
  @override
  _WatchListViewState createState() => _WatchListViewState();
}

class _WatchListViewState extends State<WatchListView> {
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
                text: "Watchlist",
              ),
              Tab(
                text: "Heatmap",
              ),
              Tab(
                text: "Charts",
              ),
              Tab(
                text: "Alerts",
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
              onPressed: () {}),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff25cd9c),
                ),
                onPressed: () {}),
          ],
        ),
        backgroundColor: Colors.white,
        body:  Padding(
          padding: EdgeInsets.all(0.0),
          child: TabBarView(
            children: [
              WatchListListTile(),
              //Text("a"),
              Text("b"),
              Text("c"),
              Text("d"),
              //Text("News"),
            ],
          ),
        ),
      ),
    );
  }
}
