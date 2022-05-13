import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(onTap: (){Navigator.pop(context);}
            ,child: Icon(Icons.arrow_back_ios_rounded)),
        titleSpacing: -10,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        title: Row(
          children: [
            Icon(
              Icons.shield,
              color: primary,
            ),
            SizedBox(width: width*0.015,),
            Text(
              "Terms and Conditions",
              style: TextStyle(color: Colors.black,fontSize: 19.sp),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 1,
                height: height * 0.05,
                color: primary,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Terms and Conditions",
                        style: TextStyle(color: Colors.white, fontSize: 16.5.sp),
                      )),
                ),
              ),
              Container(
                width: width*1,
                height: height*0.44,
                decoration: BoxDecoration(
                    border: Border.all(color: primary)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.02, vertical: height*0.01),
                  child: Text("This page set out the special Terms and Conditions for Investors Lounge. By using Investors Lounge, you agree to abite by these Terms and Conditions. The terms and conditions may be modified at any time and a notice regarding any important material changes will be posted on the website. However, we are under no obligation to ensure that you have read the updates in terms and service conditions. Is is user's responsibility to check for updates time to time.your continueduse of investors lounge and its services means that you accept any new or modified terms and conditions", style: TextStyle(height: 1.5, fontSize: 16.sp),),
                ),
              ),
              SizedBox(height: height*0.03,),
              Container(
                width: width*1,
                height: height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Align(alignment: Alignment.centerLeft,child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width*0.02),
                      child: Text("What is not the purpose of Investors Lounge?", style: TextStyle(fontSize: 15.5.sp),),
                    ),
                    Spacer(),
                    Icon(Icons.add,color: Colors.grey,),
                  ],
                )),
              ),
              SizedBox(height: height*0.03,),
              Container(
                width: width*1,
                height: height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Align(alignment: Alignment.centerLeft,child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width*0.02),
                      child: Text("Registration", style: TextStyle(fontSize: 15.5.sp),),
                    ),
                    Spacer(),
                    Icon(Icons.add,color: Colors.grey,),
                  ],
                )),
              ),
              SizedBox(height: height*0.03,),
              Container(
                width: width*1,
                height: height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Align(alignment: Alignment.centerLeft,child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width*0.02),
                      child: Text("Services", style: TextStyle(fontSize: 15.5.sp),),
                    ),
                    Spacer(),
                    Icon(Icons.add,color: Colors.grey,),
                  ],
                )),
              ),
              SizedBox(height: height*0.03,),
              Container(
                width: width*1,
                height: height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Align(alignment: Alignment.centerLeft,child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width*0.02),
                      child: Text("Conduct", style: TextStyle(fontSize: 15.5.sp),),
                    ),
                    Spacer(),
                    Icon(Icons.add,color: Colors.grey,),
                  ],
                )),
              ),
              SizedBox(height: height*0.03,),
              Container(
                width: width*1,
                height: height*0.05,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Align(alignment: Alignment.centerLeft,child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:width*0.02),
                      child: Text("Disclaimer of warranties and Liabilities", style: TextStyle(fontSize: 15.5.sp),),
                    ),
                    Spacer(),
                    Icon(Icons.add,color: Colors.grey,),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
