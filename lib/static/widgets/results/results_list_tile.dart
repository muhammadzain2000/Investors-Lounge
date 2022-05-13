import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResultsListTile extends StatelessWidget {
  final String title;
  final String eps;
  final String divident;
  final String date;

  const ResultsListTile(
      {Key key, this.title, this.date, this.divident, this.eps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      title: Row(
        children: <Widget>[
          SizedBox(
            width: width * 0.15,
            child: Text(
              title,
              style: TextStyle(fontSize: 16.5.sp),
            ),
          ),
          Spacer(),
          SizedBox(
            width: width * 0.15,
            child: Text(
              eps,
              style: TextStyle(color: primary,fontSize: 16.5.sp),
            ),
          ),
          Spacer(),
          SizedBox(
              width: width * 0.09,
              child: Text(
                divident,
                style: TextStyle(fontSize: 16.5.sp),
              )),
          Spacer(),
          Text(
            date,
            style: TextStyle(color: Colors.grey, fontSize: 16.5.sp),
          ),
        ],
      ),
    );
  }
}
