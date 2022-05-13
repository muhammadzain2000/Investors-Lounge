import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
//import 'package:investors_lounge/static/screens/tabbar/exclusive/exclusive_view.dart';
import 'package:investors_lounge/static/widgets/exclusive/exclusive_list.dart';

import 'exclusive_view.dart';


class Exclusive extends StatefulWidget {
  @override
  _ExclusiveState createState() => _ExclusiveState();
}

class _ExclusiveState extends State<Exclusive> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          ExclusiveList(
            title: "PM Launches SBP's Free Raast Person-to-Person Instant payment",
            time:"4m",
            imagePath: "images/exclusive/image1.jpg",
            onclick: (){
              changeScreen(context, ExclusiveView());
            },
          ),
          SizedBox(height:height*0.02 ,),
          ExclusiveList(
            title: "SECP specifies Fixed Rate Mutual\nFund",
            time:"10m",
            imagePath: "images/exclusive/image2.jpg",
            onclick: (){
              changeScreen(context, ExclusiveView());
            },
          ),
          SizedBox(height:height*0.02 ,),
          ExclusiveList(
            title: "SECP geared towards creating an investment friendly ecosystem...",
            time:"20m",
            imagePath: "images/exclusive/image3.jpg",
            onclick: (){
              changeScreen(context, ExclusiveView());
            },
          ),
          SizedBox(height:height*0.02 ,),
          ExclusiveList(
            title: "Governer SBP participates in an interactive session with the...",
            time:"40m",
            imagePath: "images/exclusive/image4.jpg",
            onclick: (){
              changeScreen(context, ExclusiveView());
            },
          ),
          SizedBox(height:height*0.02 ,),
          ExclusiveList(
            title: "SBP introduces instant and free person-to-person payments...",
            time:"1h",
            imagePath: "images/exclusive/image5.jpg",
            onclick: (){},
          ),
          SizedBox(height:height*0.02 ,),
          ExclusiveList(
            title: "US-UAE push for another \$4bn in farming climate change investment",
            time:"4m",
            imagePath: "images/exclusive/image6.jpg",
            onclick: (){
              changeScreen(context, ExclusiveView());
            },
          ),
          SizedBox(height:height*0.02 ,),
        ],
      ),
    );
  }
}
