import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class FilingList extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String imagePath;
  final VoidCallback onclick;

  const FilingList({
    Key key,
    this.title,
    this.subtitle,
    this.time,
    this.imagePath,
    this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(imagePath)),
      title: Text(
        title,
        style: TextStyle(fontSize: 17.sp),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),

      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:height*0.01 ,),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15.5.sp, color: Colors.black54),
          ),
          Padding(
            padding:  EdgeInsets.only(top:height*0.01),
            child: Text(
              time,
              style: TextStyle(fontSize: 15.5.sp, color: Colors.black26),
            ),
          ),
        ],
      ),
      isThreeLine: true,
      onTap: onclick,
    );
  }
}
