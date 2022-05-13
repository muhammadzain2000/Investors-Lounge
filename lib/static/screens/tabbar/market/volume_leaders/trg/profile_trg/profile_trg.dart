import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class ProfileTrg extends StatefulWidget {
  @override
  _ProfileTrgState createState() => _ProfileTrgState();
}

class _ProfileTrgState extends State<ProfileTrg> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left:width*0.04),
              child: Row(
                children: [
                  Image.asset("images/volume_leaders/trg.jpg", height: height*0.1,width: width*0.1,),
                  SizedBox(width: width*0.00,),
                  Text("TRG Pakistan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),)
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.04, right:width* 0.05),
              child: Text("Founded in 1940 by the Habib Family, HBL became Pakista's first commercia;. In 1951 it opened its first international branch in Colombo.Sri Lanka.In 1972 the bank moved its headquarters to the Habib Bank Plaza, which became the tallest building in South Asia at the time. The Government nationalized the bank in 1974 and privatized it in 2003; at that time the Aga Khan Fund for Economic Development acquired a controlling share.",style: TextStyle(height: 1.5, fontSize: 16.sp),textAlign: TextAlign.justify,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Sector:",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Commercial Bank", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Symbol:",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("TRG",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Website:",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("www.hbl.com",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.01, left: width*0.04, right: width*0.05),
              child: Text("Key Executives",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            ),
            //Divider(thickness: 0.5, color: primary,),
            DottedLine(dashColor: Color(0x3f25cd9c),dashGapColor: Colors.white,),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Chairperson",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Mr.Waleed Tariq", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("CEO",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Mr.Hasnain Alam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Company Secretary",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Mrs. Urooj Khan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.01, left: width*0.04, right: width*0.05),
              child: Text("Equity Profile", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            ),
            DottedLine(dashColor: Color(0x3f25cd9c),dashGapColor: Colors.white,),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Market Cap (Rs.)",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Commercial Bank", style: TextStyle(color: primary),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Total Shares",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Commercial Bank", style: TextStyle(color: primary,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Free Float",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Commercial Bank", style: TextStyle(color: primary,fontSize: 15.5.sp),),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.03, bottom: height*0.00, left: width*0.04, right: width*0.05),
              child: Row(
                children: [
                  Text("Free Float %",style: TextStyle(fontSize: 15.5.sp),),
                  Spacer(),
                  Text("Commercial Bank", style: TextStyle(color: primary,fontSize: 15.5.sp),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
