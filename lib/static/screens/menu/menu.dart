import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/menu/feedback.dart';
import 'package:investors_lounge/static/screens/menu/notification.dart';
import 'package:investors_lounge/static/screens/menu/premium.dart';
import 'package:investors_lounge/static/screens/menu/privacy_policy.dart';
import 'package:investors_lounge/static/screens/menu/terms.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _switchValue=false;

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(onTap: (){Navigator.pop(context);}
            ,child: Icon(Icons.arrow_back_ios_rounded)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        titleSpacing: -10,
        title: Row(
          children: [
            Icon(
              Icons.menu,
              color: primary,
            ),
            SizedBox(
              width: width * 0.015,
            ),
            Text(
              "Menu",
              style: TextStyle(color: Colors.black, fontSize: 19.sp),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.02),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: primary,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 17.sp,
                  ),
                ),
                SizedBox(
                  width: width * 0.015,
                ),
                Text(
                  "Hassan Jameel",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5.sp),
                )
              ],
            ),
          ),
          ListTile(
            minLeadingWidth: 10,
            leading: Icon(
              Icons.notifications,
              color: primary,
              size: 20.sp,
            ),
            title: Text(
              "Notification",
              style: TextStyle(color: Colors.black, fontSize: 16.5.sp),
            ),
            onTap: () {
              changeScreen(context, Notifications());
            },
          ),
          ListTile(
            minLeadingWidth: 10,
            leading: Icon(
              Icons.notifications,
              color: primary,
              size: 20.sp,

            ),
            title: Text("My Alerts", style: TextStyle( fontSize: 16.5.sp),),
          ),
          ListTile(
            minLeadingWidth: 10,
            leading: Icon(
              Icons.remove_red_eye_outlined,
              color: primary,
              size: 20.sp,

            ),
            title: Text("Watchlist", style: TextStyle( fontSize: 16.5.sp),),
          ),
          ListTile(
            onTap: (){
              changeScreen(context, Premium());
            },
            minLeadingWidth: 10,
            leading: Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20.sp,

            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get unlimited access", style: TextStyle(color: Colors.redAccent, fontSize: 12.sp),),
                Text("Upgrade to Premium", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.5.sp),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.04, vertical: height*0.02),
            child: Text(
              "More",
              style: TextStyle(color: Colors.grey, fontSize: 16.sp),
            ),
          ),
          ListTile(
            onTap: (){
              changeScreen(context, SendFeedback());
            },
            minLeadingWidth: 10,
            leading: Icon(
              Icons.message,
              color: primary,
              size: 20.sp,

            ),
            title: Text("Send Feedback", style: TextStyle( fontSize: 16.5.sp),),
          ),
          ListTile(
            minLeadingWidth: 10,
            leading: Icon(
              Icons.wb_sunny_outlined,
              color: primary,
              size: 20.sp,

            ),
            title: Text("Dark Theme", style: TextStyle( fontSize: 16.5.sp),),
            trailing: CupertinoSwitch(
              activeColor: primary,
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ),
          ListTile(
            onTap: (){
              changeScreen(context, PrivacyPolicy());
            },
            minLeadingWidth: 10,
            leading: Icon(
              Icons.lock,
              color: primary,
              size: 20.sp,

            ),
            title: Text("Privacy Policy", style: TextStyle( fontSize: 16.5.sp),),
          ),
          ListTile(
            minLeadingWidth: 10,
            onTap: () {
              changeScreen(context, Terms());
            },
            leading: Icon(
              Icons.shield,
              color: primary,
              size: 20.sp,

            ),
            title: Text("Terms and Conditions", style: TextStyle( fontSize: 16.5.sp),),
          ),
          ListTile(
            minLeadingWidth: 10,
            leading: Icon(
              Icons.logout,
              size: 20.sp,

              color: primary,
            ),
            title: Text("Sign Out", style: TextStyle( fontSize: 16.5.sp),),
          ),
        ],
      ),
    );
  }
}
