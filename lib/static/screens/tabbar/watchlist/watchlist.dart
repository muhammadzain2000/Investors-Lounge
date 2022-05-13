import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/screens/tabbar/watchlist/watchlist_view.dart';

class WatchlistTab extends StatefulWidget {
  @override
  _WatchlistTabState createState() => _WatchlistTabState();
}

class _WatchlistTabState extends State<WatchlistTab> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: height * 0.05,
              ),
              Image.asset(
                "images/watchlist/watchlistlogo.png",
                width: width * 0.3,
                height: height * 0.15,
              ),
              Text(
                "Track your favourite stocks",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                "Add companies to your watchlist to",
                style: TextStyle(color: Colors.grey, fontSize: 15.sp),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                "track important updates",
                style: TextStyle(color: Colors.grey, fontSize: 15.sp),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: primary)),
                  elevation: 0.0,
                  onPressed: () {
                    changeScreen(context, WatchListView());
                  },
                  color: Color(0xff25cd9c),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18.sp,
                      ),
                      Text(
                        "Add stock",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
