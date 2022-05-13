import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PremiumPricing extends StatefulWidget {
  @override
  _PremiumPricingState createState() => _PremiumPricingState();
}

class _PremiumPricingState extends State<PremiumPricing> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top:height*0.13),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.lock,
                  color: primary,
                  size: 25.sp,
                ),
                SizedBox(height: height*0.01,),
                Text(
                  "You are not authorized to access this Page",
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: height*0.03,),
                Text(
                  "Get Unlimited",
                  style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Access",
                  style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height*0.07,),
                Padding(
                  padding:  EdgeInsets.only(left:width*0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\u2022",
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          Text("   Unlimited access to the most data-driven stories on ",
                              style: TextStyle(fontSize: 16.sp,)),

                        ],
                      ),
                      Text("     investorslounge.com,plus mobile and tablet apps",
                          style: TextStyle(fontSize: 16.sp,)),
                    ],
                  ),
                ),
                SizedBox(height: height*0.015,),
                Padding(
                  padding:  EdgeInsets.only(left:width*0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\u2022",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          Text("   Expert perspective and insights on Investors lounge ",
                              style: TextStyle(fontSize: 16.sp,)),

                        ],
                      ),
                      Text("     portal",
                          style: TextStyle(fontSize: 16.sp,)),
                    ],
                  ),
                ),
                SizedBox(height: height*0.015,),
                Padding(
                  padding:  EdgeInsets.only(left:width*0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\u2022",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                          Text("   Exclusive subscriber only play league",
                              style: TextStyle(fontSize: 16.sp,)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*0.03,),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.05),
                  child: Divider(thickness: 0.5,),
                ),
                SizedBox(height: height*0.03,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: height*0.045,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        side: BorderSide(color: primary)),
                    elevation: 0.0,
                    onPressed: (){},
                    color: Color(0xff25cd9c),
                    //shape: ,
                    //padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                    child: Text(
                      "Rs. 2,2364 / Half Yearly",
                      style: TextStyle(color: Colors.white, fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(height: height*0.005,),
                Text("Rs. 294.00/ monthly billed half yearly", style: TextStyle(fontSize: 14.sp),),
                SizedBox(height: height*0.05,),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: height*0.045,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                        side: BorderSide(color: Colors.black)),
                    elevation: 0.0,
                    onPressed: (){},
                    color: Colors.white,
                    //shape: ,
                    //padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                    child: Text(
                      "Rs. 547.00 / monthly",
                      style: TextStyle(color: Colors.black, fontSize: 18.sp),
                    ),
                  ),
                ),
                SizedBox(height: height*0.005,),

                Text("Rs. 547.00/ billed monthly", style: TextStyle(fontSize: 14.sp),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
