import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ScreenerListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String titleprice;
  final String subtitileprice;
  final VoidCallback onclick;

  const ScreenerListTile(
      {Key key,
      this.title,
      this.image,
      this.onclick,
      this.titleprice,
      this.subtitle,
      this.subtitileprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      onTap: onclick,
      minVerticalPadding: -10,
      title: Row(
        children: <Widget>[
          Image.asset(
            image,
            height: height * 0.1,
            width: width * 0.1,
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16.sp),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.grey, fontSize: 15.sp),
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
              SizedBox(height: height*0.005,),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    size: 15.sp,
                    color: primary,
                  ),
                  Text(
                    subtitileprice,
                    style: TextStyle(
                        color: primary,
                        fontSize: 15.5.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
