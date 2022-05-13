import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/bottom_navbar/education/watch_trailer.dart';
import 'package:investors_lounge/static/screens/tabbar/education/money_mindset/course.dart';
import 'package:investors_lounge/static/screens/tabbar/education/money_mindset/instructor.dart';
import 'package:investors_lounge/static/screens/tabbar/education/money_mindset/requirement.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MoneyMindset extends StatefulWidget {
  @override
  _MoneyMindsetState createState() => _MoneyMindsetState();
}

class _MoneyMindsetState extends State<MoneyMindset> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: height * 0.19,
              width: width * 1,
              color: primary,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Featured Course",
                      style: TextStyle(fontSize: 15.sp, color: Colors.white70),
                    ),
                    SizedBox(height: height*0.01,),
                    Text(
                      "Money Mindset",
                      style: TextStyle(
                          fontSize: 21.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height*0.015,),
                    Row(
                      children: [
                        Icon(
                          Icons.people,
                          size: 17.sp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        Text(
                          "546 already enrolled",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Icon(
                          Icons.watch_later,
                          size: 17.sp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Text(
                          "01 hrs 44 min",
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.02,),
                    Row(
                      children: [
                        SizedBox(
                          height: height*0.05,
                          width: width * 0.4,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: primary)),
                            elevation: 0.0,
                            onPressed: () {
                              //changeScreen(context, StartCourse());
                            },
                            color: Colors.white,
                            //shape: ,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Text(
                              "Start Course",
                              style: TextStyle(color: primary, fontSize: 17.sp),
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.12,),
                        SizedBox(
                          height: height*0.05,
                          width: width * 0.4,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: primary)),
                            elevation: 0.0,
                            onPressed: () {
                              changeScreen(context, WatchTrailer());
                            },
                            color: Colors.white,
                            //shape: ,

                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: primary,
                                  size: 20.sp,
                                ),
                                SizedBox(width: width*0.01),
                                Text(
                                  "Watch Trailer",
                                  style:
                                      TextStyle(color: primary, fontSize: 17.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          isScrollable: true,
                          labelColor: primary,
                          labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                          unselectedLabelColor: Colors.grey,
                          unselectedLabelStyle: TextStyle(fontSize: 17.sp),
                          indicatorColor: primary,
                          indicatorPadding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.03),
                          labelPadding: EdgeInsets.symmetric(horizontal:width*0.03),
                          tabs: [
                            Tab(text: 'Course'),
                            Tab(text: 'Instructor'),
                            Tab(text: 'Requirement'),
                          ],
                        ),
                      ),
                      Container(
                        height: height*0.73,
                        child: TabBarView(children: <Widget>[
                         Course(),
                          Instructor(),
                          Requirement(),
                        ]),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
