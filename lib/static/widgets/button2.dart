import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ButtonWidget2 extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget2({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
    //elevation: 0.0,
    onPressed: onClicked,
    //color: Colors.transparent,
    //shape: ,
    //padding: EdgeInsets.symmetric( vertical: 16),
    child: Text(
      text,
      style: TextStyle(color: Color(0xff25cd9c), fontSize: 18.sp),
    ),
  );
}