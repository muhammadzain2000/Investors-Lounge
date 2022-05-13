import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/bottom_navbar/league/education_league_view.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/league_info/rules.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadow/shadow.dart';

class EducationLeague extends StatefulWidget {
  @override
  _EducationLeagueState createState() => _EducationLeagueState();
}

class _EducationLeagueState extends State<EducationLeague> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //color: Colors.red,
              height: height * 0.17,
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,
                    width: width * 1,
                    height: height * 0.10,
                  ),
                  Positioned(
                    top: height * 0.025,
                    bottom: height * 0.00,
                    right: width * 0.35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "images/league/leaguelogo.png",
                        height: height * 0.3,
                        width: width * 0.3,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                children: [
                  Text(
                    "Investor Education League",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ReadMoreText(
                    "Win upto Rs. 20,000 and 30 Investors Lounge Scholorship by practicing your investing skilss in this 2 months education league, base on 1 Million users and win exciting prizes",
                    trimLines: 3,
                    style: TextStyle(color: Colors.black87, fontSize: 16.sp),
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
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Divider(),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Start",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "11 Sep 2021",
                          style: TextStyle(fontSize: 17.sp, color: primary),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    //width: width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "End",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "11 Oct 2021",
                          style: TextStyle(fontSize: 17.sp, color: primary),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.23,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Players",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "250",
                          style: TextStyle(fontSize: 17.sp, color: primary),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: width * 0.22,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rules",
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        InkWell(
                          onTap: () {
                            changeScreen(context, LeagueRules());
                          },
                          child: Text(
                            "view",
                            style: TextStyle(fontSize: 17.sp, color: primary),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prize",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Winner",
                        style: TextStyle(fontSize: 17.sp),
                      ),
                      Spacer(),
                      SizedBox(
                        width: width*0.31,

                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20.sp,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "15,000",
                              style: TextStyle(fontSize: 17.sp, color: primary),
                            ),
                            Text(
                              " PKR",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Runner Up",
                        style: TextStyle(fontSize: 17.sp),
                      ),
                      Spacer(),
                      SizedBox(
                        width: width*0.31,

                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20.sp,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "5,000",
                              style: TextStyle(fontSize: 17.sp, color: primary),
                            ),
                            Text(
                              " PKR",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "3rd Place",
                        style: TextStyle(fontSize: 17.sp),
                      ),
                      Spacer(),
                      SizedBox(
                        width: width*0.31,
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20.sp,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              "30",
                              style: TextStyle(fontSize: 17.sp, color: primary),
                            ),
                            Text(
                              " Scholorships",
                              style: TextStyle(
                                  fontSize: 15.sp, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    side: BorderSide(color: primary)),
                elevation: 0.0,
                onPressed: () {
                  changeScreen(context, EducationLeagueView());
                },
                color: Color(0xff25cd9c),
                //shape: ,
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Text(
                  "Enter League",
                  style: TextStyle(color: Colors.white, fontSize: 17.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
