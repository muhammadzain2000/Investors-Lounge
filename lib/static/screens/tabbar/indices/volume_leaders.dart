import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/trg/volume_leaders_detail_trg.dart';
import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/market/volume_leaders/hbl/volume_leaders_detail.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/market/volume_leaders/overview/volume_overview.dart';
import 'package:investors_lounge/static/widgets/indices/volume_leaders_list_tile.dart';

class VolumeLeaders extends StatefulWidget {
  @override
  _VolumeLeadersState createState() => _VolumeLeadersState();
}

class _VolumeLeadersState extends State<VolumeLeaders> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      //physics: const AlwaysScrollableScrollPhysics(),
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

          onTap: (){
            changeScreen(context, VolumeLeadersDetail());
          },
          //contentPadding: EdgeInsets.only(right: 1),
          //horizontalTitleGap: 5,
          //dense: true,
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
                        style: TextStyle(color: primary, fontSize: 15),
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
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "45,000",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Value",
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "35M",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "26.11",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 13,
                        color: Colors.red,
                      ),
                      Text(
                        "0.23 -21.11%",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
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
          minVerticalPadding: -15,

          onTap: (){changeScreen(context, VolumeLeadersDetailTrg());},
          //contentPadding: EdgeInsets.only(right: 1),
          //horizontalTitleGap: 5,
          //dense: true,
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
                        "images/volume_leaders/trg.jpg",fit: BoxFit.scaleDown,
                        height: height * 0.1,
                        width: width * 0.1,
                      ),
                    ),
                    //SizedBox(width: width*0.03,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left:4.0),
                        child: Text(
                          "TRG",
                          style: TextStyle(color: primary, fontSize: 15),
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
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "45,000",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Value",
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    "35M",
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "26.11",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 13,
                        color: Colors.red,
                      ),
                      Text(
                        "0.23 -21.11%",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 14,
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
