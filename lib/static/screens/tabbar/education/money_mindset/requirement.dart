import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Requirement extends StatefulWidget {
  @override
  _RequirementState createState() => _RequirementState();
}

class _RequirementState extends State<Requirement> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.04, vertical: height*0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("\u2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
                  Text(" No Prior Knowledge",
                      textAlign: TextAlign.left,
                      style: TextStyle( fontSize: 16.sp)),
                ],
              ),
              Row(
                children: [
                  Text("\u2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
                  Text(" No Prior Experience",
                      textAlign: TextAlign.left,
                      style: TextStyle( fontSize: 16.sp)),
                ],
              ),
              Row(
                children: [
                  Text("\u2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
                  Text(" PC and Internet Connection",
                      textAlign: TextAlign.left,
                      style: TextStyle( fontSize: 16.sp)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
