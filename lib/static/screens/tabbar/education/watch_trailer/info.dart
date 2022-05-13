import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.03),
              child: Text("Course Instructor", style: TextStyle(color: primary, fontSize: 17.sp),),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.03),
              child: Text("Baqar Abbas Jafri", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: height*0.015,),
            Divider(color: Colors.grey),
            SizedBox(height: height*0.015,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.03),
              child: Text("Course Description", style: TextStyle(color: primary, fontSize: 17.sp),),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.03),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(fontSize: 16.sp, height: 1.7),textAlign: TextAlign.justify,),
            ),
            SizedBox(height: height*0.02,),


          ],
        ),
      ),
    );
  }
}
