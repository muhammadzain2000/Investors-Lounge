import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/education/watch_trailer/info.dart';
import 'package:investors_lounge/static/screens/tabbar/education/watch_trailer/lectures.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WatchTrailer extends StatefulWidget {
  @override
  _WatchTrailerState createState() => _WatchTrailerState();
}

class _WatchTrailerState extends State<WatchTrailer> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Money Mindset",
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        titleSpacing: -8,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              width: width * 1,
              child: BetterPlayer.network(
                "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
                betterPlayerConfiguration:
                    BetterPlayerConfiguration(aspectRatio: 16 / 9),
              ),
            ),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          isScrollable: true,
                          labelColor: primary,
                          labelStyle: TextStyle(
                              fontSize: 17.sp, fontWeight: FontWeight.bold),
                          unselectedLabelColor: Colors.grey,
                          unselectedLabelStyle: TextStyle(fontSize: 17.sp),
                          indicatorColor: primary,
                          indicatorPadding: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                              horizontal: width * 0.03),
                          labelPadding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          tabs: [
                            Tab(text: 'Lectures'),
                            Tab(text: 'Info'),
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.55,
                        child: TabBarView(children: <Widget>[
                          Lectures(),
                          Info(),
                        ]),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
