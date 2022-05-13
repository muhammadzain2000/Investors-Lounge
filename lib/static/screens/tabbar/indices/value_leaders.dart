import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/widgets/indices/volume_leaders_list_tile.dart';

class ValueLeaders extends StatefulWidget {
  @override
  _ValueLeadersState createState() => _ValueLeadersState();
}

class _ValueLeadersState extends State<ValueLeaders> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ListTile(
          minVerticalPadding: -10,
          onTap: (){},
          title: Row(
            children: <Widget>[
              Container(
                width: width * 0.25,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "images/volume_leaders/hbl.png",
                        height: height * 0.1,
                        width: width * 0.1,
                      ),
                    ),
                    SizedBox(width: width*0.01,),
                    Expanded(
                      child: Text(
                        "HBL",
                        style: TextStyle(color: primary, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Volume",
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "45,000",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Value",
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "35M",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "26.11",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 15.sp,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "0.23 -21.11%",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/hubco.png",
          title: "HUBC0",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/engro.png",
          title: "ENGRO",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/suzuki.png",
          title: "PMSC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/pso.png",
          title: "PSO",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ListTile(
          minVerticalPadding: -10,
          onTap: (){},
          title: Row(
            children: <Widget>[
              Container(
                width: width * 0.25,
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "images/volume_leaders/trg.jpg",
                        height: height * 0.1,
                        width: width * 0.1,
                      ),
                    ),
                    //SizedBox(width: width*0.03,),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left:4.0),
                        child: Text(
                          "TRG",
                          style: TextStyle(color: primary, fontSize: 16.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Volume",
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "45,000",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Value",
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "35M",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "26.11",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 15.sp,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "0.23 -21.11%",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 15.5.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/searle.png",
          title: "SEARE",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/engro.png",
          title: "ENGRO",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        ValueLeadersListTile(
          titleImage: "images/volume_leaders/suzuki.png",
          title: "PMSC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
      ],
    );
  }
}
