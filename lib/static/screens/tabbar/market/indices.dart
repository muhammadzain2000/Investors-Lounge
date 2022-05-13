import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/indices_view.dart';
import 'package:investors_lounge/static/widgets/indices/indices_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Indices extends StatefulWidget {
  @override
  _IndicesState createState() => _IndicesState();
}

class _IndicesState extends State<Indices> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          IntrinsicHeight(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.01),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Market Status",
                    style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                  ),
                  //SizedBox(width: width*0.05,),
                  Spacer(),
                  Icon(
                    Icons.lock,
                    color: Colors.red,
                    size: 15.sp,
                  ),
                  //SizedBox(width: width*0.02,),
                  Spacer(),
                  Text(
                    "CLOSED",
                    style: TextStyle(color: Colors.red, fontSize: 14.5.sp),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                  Text(
                    "Last Update",
                    style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                  ),
                  //SizedBox(width: width*0.05,),
                  Spacer(),
                  Text(
                    "21 Feb 4:05 pm",
                    style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                  ),
                ],
              ),
            ),
          ),
          IndicesList(
            title: "KSE 100",
            subtitle: "KSE100 index",
            volume: "49.52M",
            value: "3.51B",
            titleprice: "32,235.65",
            subtitleprice: "182.80 +0.51%",
            onclick: () {changeScreen(context, IndicesView());},
          ),
          Divider(
            thickness: 0.3,
            color: Colors.black54,
          ),
          IndicesList(
            title: "KSE 30",
            subtitle: "KSE30 index",
            volume: "33.10M",
            value: "2.81B",
            titleprice: "30,157.21",
            subtitleprice: "132.10 +1.21%",
            onclick: () {changeScreen(context, IndicesView());},
          ),
          Divider(
            thickness: 0.3,
            color: Colors.black54,
          ),
          ListTile(
            onTap: () {changeScreen(context, IndicesView());},
            title: Row(
              children: <Widget>[
                Container(
                  width: width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "KSE ALL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primary,
                            fontSize: 17.5.sp),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        "KSEALL Share Index",
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
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
                      "31.31M",
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
                      "4.07B",
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "22,135.65",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.redAccent,
                          size: 15.sp,
                        ),
                        Text(
                          "-201.80 -1.22%",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.sp,
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
            color: Colors.black54,
          ),
          ListTile(
            onTap: () {changeScreen(context, IndicesView());},
            title: Row(
              children: <Widget>[
                Container(
                  width: width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "KMI 30",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primary,
                            fontSize: 17.5.sp),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        "KSEALL Share Index",
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
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
                      "31.31M",
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
                      "4.07B",
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "22,135.65",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.redAccent,
                          size: 15.sp,
                        ),
                        Text(
                          "-201.80 -1.22%",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.sp,
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
            color: Colors.black54,
          ),
          IndicesList(
            title: "BKTi",
            subtitle: "Banking Tradeable\nIndex",
            volume: "49.52M",
            value: "3.51B",
            titleprice: "32,235.65",
            subtitleprice: "182.80 +0.51%",
            onclick: () {changeScreen(context, IndicesView());},
          ),
          Divider(
            thickness: 0.3,
            color: Colors.black54,
          ),
          IndicesList(
            title: "OGTi",
            subtitle: "Oil and Gas Tradeable\nIndex",
            volume: "33.10M",
            value: "2.81B",
            titleprice: "30,157.21",
            subtitleprice: "132.10 +1.21%",
            onclick: () {changeScreen(context, IndicesView());},
          ),
          Divider(
            thickness: 0.3,
            color: Colors.black54,
          ),
          ListTile(
            onTap: () {changeScreen(context, IndicesView());},
            title: Row(
              children: <Widget>[
                Container(
                  width: width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "UPP9",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primary,
                            fontSize: 17.5.sp),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        "KSEALL Share Index",
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
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
                      "31.31M",
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
                      "4.07B",
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "22,135.65",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.redAccent,
                          size: 15.sp,
                        ),
                        Text(
                          "-201.80 -1.22%",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.sp,
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
            color: Colors.black54,
          ),
          ListTile(
            onTap: () {changeScreen(context, IndicesView());},
            title: Row(
              children: <Widget>[
                Container(
                  width: width * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "NITPGI",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primary,
                            fontSize: 17.5.sp),
                      ),
                      SizedBox(
                        height: height * 0.005,
                      ),
                      Text(
                        "KSEALL Share Index",
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
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
                      "31.31M",
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
                      "4.07B",
                      style: TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "22,135.65",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_downward_sharp,
                          color: Colors.redAccent,
                          size: 15.sp,
                        ),
                        Text(
                          "-201.80 -1.22%",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.sp,
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
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
