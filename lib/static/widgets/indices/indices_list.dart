import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class IndicesList extends StatelessWidget {
  final String title;
  final String subtitle;
  final String volume;
  final String value;
  final String titleprice;
  final String subtitleprice;
  final VoidCallback onclick;

  const IndicesList({
    Key key, this.title,this.subtitle, this.value, this.subtitleprice, this.titleprice, this.volume, this.onclick
}): super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      onTap: onclick,
      title: Row(
        children: <Widget>[
          Container(
            width: width*0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primary,
                      fontSize: 17.5.sp),
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Text(
                  subtitle,
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
                volume,
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
                value,
                style: TextStyle(color: Colors.black, fontSize: 15.sp),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                titleprice,
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
              ),
              SizedBox(
                height: height * 0.005,
              ),

              Row(
                children: [
                  Icon(Icons.arrow_upward, size: 15.sp, color: primary,),
                  Text(
                    subtitleprice,
                    style: TextStyle(
                        color: primary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
