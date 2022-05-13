import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
//import 'package:investors_lounge/static/widgets/bottom_navbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ExclusiveView extends StatefulWidget {
  @override
  _ExclusiveViewState createState() => _ExclusiveViewState();
}

class _ExclusiveViewState extends State<ExclusiveView> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primary,
        actions: [
          IconButton(
              icon: Icon(
                Icons.text_fields,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("PM Launches SBP's Free Raast Person-to-Person Instant Payments System", style: TextStyle(fontSize: 19.sp, color: primary, fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.02,),
              Row(
                children: <Widget>[
                  Text("Asim Abbas    ", style: TextStyle(fontSize: 14.5.sp),),
                  Text("Thursday,", style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),),
                  Text("17 February 2022", style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Download",
                          style: TextStyle( color: Colors.black,fontSize: 14.5.sp),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:width*0.01),
                          child: Icon(
                            Icons.download_sharp,
                            color: primary,
                            size: 16.5.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.01,),
              Container(
                  width: width*1,
                  child: Image.asset("images/raast.png")),
              SizedBox(height: height*0.01,),
              Text(
                "The opposition leaders lambasted the Pakistan Tehreek-e-Insaf(PTI) on Wednesday for a record hike in the price of petroleum products, calling the increase in the price like exploding a 'petrol bomb' on people.", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, height: 2),),
              SizedBox(height: height*0.03,),
              Text(
                "A day earlier, at the stroke of midnight, the government made a massive increase of up tp Rs12.03 per litre in the price of petroleum products, taking that of petrol to a record level of Rs159.86 per litre effective from February 16.The price of petrol broke all previous records by reaching the Rs160 per litre mark.", style: TextStyle(fontSize: 16.sp,height: 2),),
            ],
          ),
        ),
      ),
    );
  }
}
