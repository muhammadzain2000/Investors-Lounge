import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Lectures extends StatefulWidget {
  @override
  _LecturesState createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.025),
          child: Column(
            //shrinkWrap: true,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chapter 1: Types of Money Mindsets",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: primary,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 1: Rich Mindset",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 2: High Growth Mindset",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 3: Struggler Mindset",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 4: Poor Mindset",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 5: Exercise - Find your mindset!",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                "Chapter 2: Time Value of Money",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: primary,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 1: How Interest and inflation affect...",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 2: Exercise - Real Vs Nominal Returns",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Text(
                "Chapter 3: Power of Compounding",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: primary,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 1: Magic of Compounding and Curse\nof Inflation",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.play_circle_fill,
                    size: 17.sp,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Lecture 1: Magic of Compounding and Curse\nof Inflation",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
