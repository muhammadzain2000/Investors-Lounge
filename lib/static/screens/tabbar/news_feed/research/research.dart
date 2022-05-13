import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/news_feed/research/research_view.dart';
//import 'package:investors_lounge/static/screens/tabbar/research/research_view.dart';
import 'package:investors_lounge/static/widgets/filters.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/widgets/news_and_research/news_list.dart';
import 'package:investors_lounge/static/widgets/research/research_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Research extends StatefulWidget {
  @override
  _ResearchState createState() => _ResearchState();
}

class _ResearchState extends State<Research> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: height*0.05,
                child: TextButton(
                  onPressed: () {
                    changeScreen(context, Filters());
                  },
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Filters",
                        style: TextStyle(color: primary, fontSize: 16.sp),
                      ),
                      Icon(
                        Icons.filter_alt,
                        color: primary,
                        size: 16.sp,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          ResearchList(
            title: "MUGHAL 2QFY22 EPS Rs5.5, DPS Rs3",
            subtitle: "Sherman Research",
            time: ". 4m",
            imagepath: "images/research/image1.png",
            onclick: () {
              changeScreen(context, ResearchView());
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ResearchList(
            title: "Lotte Chemical Pakistan Limited (LOTCHEM): 4QCY21 Result",
            subtitle: "Darson Securities",
            time: ". 8m",
            imagepath: "images/research/image2.png",
            onclick: () {
              changeScreen(context, ResearchView());
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ResearchList(
            title: "Kohat Cement Company limited (KOHC): 2QFYY EPS at PKR7.90",
            subtitle: "Next Capital",
            time: ". 20m",
            imagepath: "images/research/image3.png",
            onclick: () {
              changeScreen(context, ResearchView());
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ResearchList(
            title: "Cherat Cement Company Limited (CHCC): 2QFYY22 PAT arrived",
            subtitle: "Taurus Research",
            time: ". 30m",
            imagepath: "images/research/image4.png",
            onclick: () {
              changeScreen(context, ResearchView());
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ResearchList(
            title: "Pakistan Economy: Pakistan's External Trade Summary",
            subtitle: "TSBL Research",
            time: ". 3D",
            imagepath: "images/research/image5.png",
            onclick: () {
              changeScreen(context, ResearchView());
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
          ResearchList(
            title: "Market Wrap: PSX key information February 18, 2022",
            subtitle: "JS Research",
            time: ". 4D",
            imagepath: "images/research/image6.png",
            onclick: () {
              changeScreen(context, ResearchView());
            },
          ),
          SizedBox(
            height: height * 0.02,
          ),
        ],
      ),
    );
  }
}
