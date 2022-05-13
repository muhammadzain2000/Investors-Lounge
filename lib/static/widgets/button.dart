import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width * 0.8,

        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
              side: BorderSide(color: primary)),
          elevation: 0.0,
          onPressed: onClicked,
          color: Color(0xff25cd9c),
          //shape: ,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
        ),
      );
}
