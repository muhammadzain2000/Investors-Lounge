import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ValueLeadersListTile extends StatelessWidget {
  final String title;
  final String titleImage;
  final String volume;
  final String value;
  final String titleprice;
  final String subtitleprice;
  final VoidCallback onclick;

  const ValueLeadersListTile(
      {Key key,
      this.title,
      this.value,
      this.titleImage,
      this.subtitleprice,
      this.titleprice,
      this.volume,
      this.onclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      minVerticalPadding: -10,
      onTap: onclick,
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
                    titleImage,
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Expanded(
                  child: Text(
                    title,
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    size: 15.sp,
                    color: primary,
                  ),
                  Text(
                    subtitleprice,
                    style: TextStyle(
                        color: primary,
                        fontSize: 15.5.sp,
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
