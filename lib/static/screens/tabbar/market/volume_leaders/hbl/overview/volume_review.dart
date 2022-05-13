import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VolumeReview extends StatefulWidget {
  @override
  _VolumeReviewState createState() => _VolumeReviewState();
}

class _VolumeReviewState extends State<VolumeReview> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final maxLines = 5;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 0,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        title: Text(
          "Pakistan Investing League",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left:width*0.04, right: width*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Buy", style: TextStyle(fontSize: 17.sp),),
              Text("HBL", style: TextStyle(color: primary, fontSize: 19.sp, fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.01,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PKR",
                    style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: width*0.01,),
                  Text("10,000 ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                  Text(" available", style: TextStyle(fontSize: 15.5.sp),),
                ],
              ),
              SizedBox(height: height*0.08,),
              Row(
                children: [
                  Text("Number of Shares",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("10",style: TextStyle(fontSize: 15.5.sp),),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Divider(thickness: 0.5,),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Text("price",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("18.52", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                      Text("-0.41 (-0.46%)", style: TextStyle(color: Colors.redAccent,fontSize: 15.5.sp),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Divider(thickness: 0.5,),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Text("Max Buying Power (shares)",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("1,000",style: TextStyle(fontSize: 15.5.sp),),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Divider(thickness: 0.5,),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Text("Current Holding (shares)",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("500",style: TextStyle(fontSize: 15.5.sp),),
                ],
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Divider(thickness: 0.5,),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Text("Estimated Cost",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("1852.00",style: TextStyle(fontSize: 15.5.sp),),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Divider(thickness: 0.5,),
              Text("Add a comment:",style: TextStyle(fontSize: 15.5.sp),),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                //margin: EdgeInsets.all(12),
                height: maxLines * 24.0,
                child: TextFormField(
                  cursorColor: primary,
                  maxLines: maxLines,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary,),
                    ),
                    hintText: "Add a comment make your transitions remindable",
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width * 0.35,
                  height: height * 0.05,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: BorderSide(color: primary)),
                    elevation: 0.0,
                    onPressed: () {
                      //changeScreen(context, VolumeReview());
                    },
                    color: Color(0xff25cd9c),
                    //shape: ,
                    padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: 0),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 17.sp),
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
