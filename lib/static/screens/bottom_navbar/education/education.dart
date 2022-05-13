import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/bottom_navbar/education/money_mindset.dart';
import 'package:investors_lounge/static/screens/menu/menu.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Courses",
                style: TextStyle(color: Colors.black, fontSize: 21.sp,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Material(
                shadowColor: Colors.white70,
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                clipBehavior: Clip.antiAlias,
                // Add This
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(),
                  height: height * 0.45,
                  width: width * 1,
                  child: Column(
                    children: [
                      Image.asset(
                        "images/education/moneymindset.jpg",
                        height: height * 0.2,
                        width: width * 1,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.02,
                            top: height * 0.01,
                            right: width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Money Mindset",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19.sp),
                            ),
                            SizedBox(height: height*0.01,),
                            ReadMoreText(
                              "From basic money mindset to financial planning for yourself & family; this course teaches every Pakistani Citizen how to think about money & how to spend it wisely",
                              trimLines: 3,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 16.sp, height: 1.5),
                              textAlign: TextAlign.justify,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'more',
                              trimExpandedText: 'less',
                              moreStyle: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: primary),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top:height*0.007),
                              child: Row(
                                children: [
                                  Text(
                                    "By: Baqar Jafri",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: width * 0.35,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: BorderSide(color: primary)),
                                      elevation: 0.0,
                                      onPressed: () {
                                        changeScreen(context, MoneyMindset());
                                      },
                                      color: Color(0xff25cd9c),
                                      //shape: ,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.05),
                                      child: Text(
                                        "Watch Now",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Material(
                shadowColor: Colors.white70,
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                clipBehavior: Clip.antiAlias,
                // Add This
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(),
                  height: height * 0.39,
                  width: width * 1,
                  child: Column(
                    children: [
                      Image.asset(
                        "images/education/stockinvesting.jpg",
                        height: height * 0.20,
                        width: width * 1,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.02,
                            top: height * 0.01,
                            right: width * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stock Investing 101",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19.sp),
                            ),
                            SizedBox(height: height*0.01,),
                            ReadMoreText(
                              "This is the basic stock investing course for everyone",
                              trimLines: 3,
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 16.sp, height: 1.5),
                              textAlign: TextAlign.justify,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'more',
                              trimExpandedText: 'less',
                              moreStyle: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: primary),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top:height*0.007),
                              child: Row(
                                children: [
                                  Text(
                                    "By: Baqar Jafri",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: width * 0.35,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(5.0),
                                          side: BorderSide(color: primary)),
                                      elevation: 0.0,
                                      onPressed: () {
                                        changeScreen(context, MoneyMindset());
                                      },
                                      color: Color(0xff25cd9c),
                                      //shape: ,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: width * 0.05),
                                      child: Text(
                                        "Watch Now",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
