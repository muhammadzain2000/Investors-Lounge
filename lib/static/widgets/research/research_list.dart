import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ResearchList extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String imagepath;
  final VoidCallback onclick;

  const ResearchList({
    Key key, this.title, this.subtitle, this.time, this.imagepath, this.onclick,

  }) : super(key: key);

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Share with'
    );
  }


  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.02),
      child: Material(
        shadowColor: Colors.white70,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)),
        elevation: 2.5,
        child: ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          dense: true,
          hoverColor: primary,
          onTap: onclick,
          title: Padding(
            padding:  EdgeInsets.only(top: height*0.01),
            child: Text(
              title,
              style: TextStyle(fontSize: 17.sp), maxLines: 2, overflow: TextOverflow.ellipsis,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Text(
                subtitle,
                style: TextStyle(fontSize: 15.sp, color: Colors.grey),
              ),
              Spacer(),
              Text(
                time,
                style: TextStyle(color: Colors.grey, fontSize: 15.sp),overflow: TextOverflow.ellipsis,
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {share();},
                iconSize: 16.sp,
                color: Colors.grey,
              ),
            ],
          ),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              imagepath,
            ),
          ),
        ),
      ),
    );
  }
}
