import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/bottom_navbar/league/education_league.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ActiveLeague extends StatefulWidget {
  @override
  _ActiveLeagueState createState() => _ActiveLeagueState();
}

class _ActiveLeagueState extends State<ActiveLeague> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.02,),
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
                  width: width * 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.01),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/league/leaguelogo.png",
                              height: height * 0.08,
                              width: width * 0.13,
                            ),
                            SizedBox(width: width*0.01,),
                            Text(
                              "Investor Education League",
                              style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Entry Fee",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "FREE",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "108 Days",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Active Players",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "40",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children:  <TextSpan>[
                                      TextSpan(
                                          text: 'Prize',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15.sp)),
                                      TextSpan(text: ' (PKR)', style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "15,000",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: primary),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          width: width * 1,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                                side: BorderSide(color: primary)),
                            elevation: 0.0,
                            onPressed: () {
                              changeScreen(context, EducationLeague());
                            },
                            color: Color(0xff25cd9c),
                            //shape: ,
                            padding:
                            EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Text(
                              "Enter League",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.02,),
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
                  width: width * 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.01),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/league/istock.png",
                              height: height * 0.08,
                              width: width * 0.13,
                            ),
                            SizedBox(width: width*0.01,),

                            Text(
                              "IStock 2022",
                              style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Entry Fee",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "FREE",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "108 Days",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Active Players",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "40",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children:  <TextSpan>[
                                      TextSpan(
                                          text: 'Prize',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15.sp)),
                                      TextSpan(text: ' (PKR)', style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "25,000",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: primary),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          width: width * 1,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                                side: BorderSide(color: primary)),
                            elevation: 0.0,
                            onPressed: () {
                              //changeScreen(context, MoneyMindset());
                            },
                            color: Color(0xff25cd9c),
                            //shape: ,
                            padding:
                            EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.02,),
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
                  width: width * 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.01),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/league/iba.jpg",
                              height: height * 0.08,
                              width: width * 0.12,
                            ),
                            SizedBox(width: width*0.025,),
                            Text(
                              "Private League",
                              style: TextStyle(
                                  color: primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21.sp),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Entry Fee",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "FREE",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "98 Days",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  "Active Players",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "60",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: Colors.black),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children:  <TextSpan>[
                                      TextSpan(
                                          text: 'Prize',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15.sp)),
                                      TextSpan(text: ' (PKR)', style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                Text(
                                  "100,000",
                                  style: TextStyle(
                                      fontSize: 16.sp, color: primary),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          width: width * 1,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                                side: BorderSide(color: primary)),
                            elevation: 0.0,
                            onPressed: () {
                              //changeScreen(context, MoneyMindset());
                            },
                            color: Color(0xff25cd9c),
                            //shape: ,
                            padding:
                            EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Text(
                              "Pending Approval",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.01,)
            ],
          ),
        ),
      ),
    );
  }
}
