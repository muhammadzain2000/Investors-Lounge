import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/league_info/rules.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LeagueInfo extends StatefulWidget {
  @override
  _LeagueInfoState createState() => _LeagueInfoState();
}

class _LeagueInfoState extends State<LeagueInfo> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width*1,
                child: Row(
                  children: [
                    Image.asset(
                      "images/league/leaguelogo.png",
                      height: height * 0.1,
                      width: width * 0.18,fit: BoxFit.cover,
                    ),
                    SizedBox(width: width*0.02,),
                    Text(
                      "Investor Education League",
                      style:
                          TextStyle(fontSize: 20.7.sp, fontWeight: FontWeight.bold,color: primary),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.02,),
              Row(
                children: [
                  Text(
                    "New Worth :",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  Spacer(),
                  Text(
                    "1,002,668",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: primary,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  Text(
                    "Rank :",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                  Spacer(),
                  Text(
                    "3 out 46",
                    style: TextStyle(
                        fontSize: 17.sp,
                        color: primary,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Divider(),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
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
                    //width: width * 0.23,
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
              Divider(),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.45,
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
                          onTap: (){
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
              Divider(),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
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
                              style: TextStyle(fontSize: 17.sp, color: Colors.black, fontWeight: FontWeight.bold),
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
                              style: TextStyle(fontSize: 17.sp, color: Colors.black, fontWeight: FontWeight.bold),
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
                              style: TextStyle(fontSize: 17.sp, color: Colors.black, fontWeight: FontWeight.bold),
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
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: Container(
                  height: height*0.04,
                  width: width*0.35,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        side: BorderSide(color: Colors.redAccent)),
                    elevation: 0.0,
                    onPressed: () {
                      //changeScreen(context, EducationLeagueView());
                    },
                    color: Colors.white,
                    //shape: ,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Text(
                      "Exit League",
                      style: TextStyle(color: Colors.redAccent, fontSize: 17.sp),
                    ),
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
