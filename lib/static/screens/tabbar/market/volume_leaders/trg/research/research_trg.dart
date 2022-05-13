import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ResearchTrg extends StatefulWidget {
  @override
  _ResearchTrgState createState() => _ResearchTrgState();
}

class _ResearchTrgState extends State<ResearchTrg> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(
              "images/list_images/bull.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            title: Padding(
              padding:  EdgeInsets.only(bottom: height*0.01),
              child: Text(
                "Pakistan Bank: 2QCY21 Earnings up 9% YoY By - Taurus Securiries", style: TextStyle(fontSize: 16.5.sp),
                maxLines: 3,
              ),
            ),
            subtitle: Text("24 Aug 2021", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
          ),
          Divider(thickness: 0.5,color: Colors.grey,),
          ListTile(
            leading: Image.asset(
              "images/list_images/bull.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            title: Padding(
              padding:  EdgeInsets.only(bottom: height*0.01),
              child: Text(
                "Pakistan Bank: 2QCY21 Earnings up 9% YoY By - Taurus Securiries", style: TextStyle(fontSize: 16.5.sp),
                maxLines: 3,
              ),
            ),
            subtitle: Text("24 Aug 2021", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
          ),
          Divider(thickness: 0.5,color: Colors.grey,),
          ListTile(
            leading: Image.asset(
              "images/list_images/bull.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            title: Padding(
              padding:  EdgeInsets.only(bottom: height*0.01),
              child: Text(
                "Pakistan Bank: 2QCY21 Earnings up 9% YoY By - Taurus Securiries", style: TextStyle(fontSize: 16.5.sp),
                maxLines: 3,
              ),
            ),
            subtitle: Text("24 Aug 2021", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
          ),
          Divider(thickness: 0.5,color: Colors.grey,),
          ListTile(
            leading: Image.asset(
              "images/list_images/bull.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            title: Padding(
              padding:  EdgeInsets.only(bottom: height*0.01),
              child: Text(
                "Pakistan Bank: 2QCY21 Earnings up 9% YoY By - Taurus Securiries", style: TextStyle(fontSize: 16.5.sp),
                maxLines: 3,
              ),
            ),
            subtitle: Text("24 Aug 2021", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
          ),
          Divider(thickness: 0.5,color: Colors.grey,),
          ListTile(
            leading: Image.asset(
              "images/list_images/bull.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            title: Padding(
              padding:  EdgeInsets.only(bottom: height*0.01),
              child: Text(
                "Pakistan Bank: 2QCY21 Earnings up 9% YoY By - Taurus Securiries", style: TextStyle(fontSize: 16.5.sp),
                maxLines: 3,
              ),
            ),
            subtitle: Text("24 Aug 2021", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
          ),
          Divider(thickness: 0.5,color: Colors.grey,),
          ListTile(
            leading: Image.asset(
              "images/list_images/bull.png",
              height: height * 0.15,
              width: width * 0.15,
            ),
            title: Padding(
              padding:  EdgeInsets.only(bottom: height*0.01),
              child: Text(
                "Pakistan Bank: 2QCY21 Earnings up 9% YoY By - Taurus Securiries", style: TextStyle(fontSize: 16.5.sp),
                maxLines: 3,
              ),
            ),
            subtitle: Text("24 Aug 2021", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
          ),
          Divider(thickness: 0.5,color: Colors.grey,),
        ],
      ),
    );
  }
}
