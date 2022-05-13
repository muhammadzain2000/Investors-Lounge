import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReadMoreText(
              "From basic money to financial planning for yourelf & family; this course teaches every Pakistani citizen how to think about money and time; and how to allocate it prudently. You don't require any background in finance to learn the basics",
              trimLines: 3,
              style: TextStyle(
                  color: Colors.black87, height: 1.5, fontSize: 16.sp),
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
            SizedBox(height: height*0.03,),
            Text("Chapter 1: Types of Money Mindets", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: primary),),
            SizedBox(height: height*0.02,),
            ReadMoreText(
              "Let's start by exploring four types of money mindsets which include: 1, Rich mindset; 2. Growth Mindset; 3. Struggler Mindset; 4. Poor Mindset. By the end of this chapter, you will be able to identify which category of mindset you currently have; and how to move up to rich mindeset from your existing financial condition",
              trimLines: 3,
              style: TextStyle(
                  color: Colors.black87, height: 1.5, fontSize: 16.sp),
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
            SizedBox(height: height*0.03,),
            Text("Chapter 2: Time Value of Money", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: primary),),
            SizedBox(height: height*0.02,),
            ReadMoreText(
              "The value of money changes over time. That is to say 1000 Rupees you have today in cash is not worth 1000 Rupees in the future in this chapter",
              trimLines: 3,
              style: TextStyle(
                  color: Colors.black87, height: 1.5, fontSize: 16.sp),
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
            SizedBox(height: height*0.03,),
            Text("Chapter 3: Power of Compounding", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: primary),),
            SizedBox(height: height*0.02,),
            ReadMoreText(
              "Learn how compounding grows your wealth and helps you achieve your long-term financial goals. We also explain why inflation is increasig day by day. ",
              trimLines: 3,
              style: TextStyle(
                  color: Colors.black87, height: 1.5, fontSize: 16.sp),
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
            //SizedBox(height: height*0.02,)
          ],
        ),
      ),
    );
  }
}
