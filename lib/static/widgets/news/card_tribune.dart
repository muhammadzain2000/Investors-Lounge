import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:investors_lounge/static/commons/common.dart';

class TribuneCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String time;
  final VoidCallback onclick;

  const TribuneCard({Key key, this.title,this.subtitle, this.imagePath, this.time, this.onclick});

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

    return Container(
      height: height*0.2,
      child: Card(
        elevation: 0.0,
        child: InkWell(
          onTap: onclick,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(top: height*0.007, left: width*0.02, right: width*0.02),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.asset(
                      imagePath,
                      height: height * 0.158,
                      width: width * 0.32,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 18.sp, ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: height*0.01,),
                    SizedBox(
                      height: height*0.06,
                      width: width*1,
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black54
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    //Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Text(
                          time,
                          style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                        ),
                        Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(right: width*0.025),
                          child: InkWell(
                              onTap: (){share();},
                              child: Icon( CupertinoIcons.arrowshape_turn_up_right_fill,
                                color: Colors.black54, size: 17.sp,)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
