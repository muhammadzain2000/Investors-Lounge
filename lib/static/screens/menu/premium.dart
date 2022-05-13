import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Premium extends StatefulWidget {
  @override
  _PremiumState createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded)),
        titleSpacing: -10,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        title: Row(
          children: [
            Icon(
              Icons.people_alt_outlined,
              color: primary,
            ),
            SizedBox(
              width: width * 0.015,
            ),
            Text(
              "Pricing & Plan",
              style: TextStyle(color: Colors.black, fontSize: 19.sp),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Discover InvestorsLounge",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.lock_open,
                        color: primary,
                        size: 20.5.sp,
                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Text(
                        "Unlimited access to all mobile features",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.speed,
                        color: primary,
                        size: 20.5.sp,

                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Text(
                        "Keep your skills sharp practice workouts",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.compare_arrows,
                        color: primary,
                        size: 20.5.sp,

                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Text(
                        "Quick review using by leaderbord",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: primary,
                        size: 20.5.sp,

                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Text(
                        "Add stocks to watchlist for quic update",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.4,
                  height: height * 0.25,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "Monthly",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.bold,),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rs.",
                            style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                          ),
                          Text(
                            "749.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Text("billed monthly",style: TextStyle(fontSize: 15.5.sp),),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        width: width * 0.30,
                        height: height * 0.04,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                              side: BorderSide(color: Colors.black)),
                          elevation: 0.0,
                          onPressed: () {
                            //changeScreen(context, VolumeReview());
                          },
                          color: Colors.white,
                          //shape: ,
                          padding:
                              EdgeInsets.symmetric(horizontal: width*0.05, ),
                          child: Text(
                            "Subscribe",
                            style: TextStyle(color: Colors.black, fontSize: 17.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Container(
                  width: width * 0.4,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Text(
                        "Half Yearly",
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rs.",
                            style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                          ),
                          Text(
                            "2,364",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.sp,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Rs.",
                            style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                          ),
                          Text(
                            "499.00/ monthly",
                            style: TextStyle(color: Colors.white,fontSize: 15.5.sp),
                          ),
                        ],
                      ),
                      Text(
                        "billed half yearly",
                        style: TextStyle(color: Colors.white,fontSize: 15.5.sp),
                      ),
                      SizedBox(
                        height: height * 0.007,
                      ),
                      Container(
                        width: width * 0.30,
                        height: height * 0.04,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                              side: BorderSide(color: primary)),
                          elevation: 0.0,
                          onPressed: () {
                            //changeScreen(context, VolumeReview());
                          },
                          color: primary,
                          //shape: ,
                          padding:
                              EdgeInsets.symmetric(horizontal: width*0.05),
                          child: Text(
                            "Subscribe",
                            style: TextStyle(color: Colors.white, fontSize: 17.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.05,),
            Text("Subscription automatically renew, cancel anytime", style: TextStyle(color: Colors.grey, fontSize: 16.sp),)
          ],
        ),
      ),
    );
  }
}
