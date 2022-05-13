import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class MeetingsListTile extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String date;
  final String city;

  const MeetingsListTile(
      {Key key, this.title, this.date,this.image,this.time,this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      minVerticalPadding: -7,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset(
           image,
            height: height * 0.1,
            width: width * 0.1,
          ),
          SizedBox(width: width*0.03,),
          Text(title,style: TextStyle(fontSize: 16.5.sp),),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: width * 0.2,child: Text(time, style: TextStyle(fontSize: 16.5.sp),)),
              SizedBox(width: width * 0.4,),
              SizedBox(width: width * 0.2,child: Text(date, style: TextStyle(color: Colors.grey, fontSize: 15.sp),)),
            ],
          ),
          SizedBox(width: width * 0.16,child: Text(city, style: TextStyle(color: Colors.grey, fontSize: 15.sp),))
        ],
      ),
    );
  }
}
