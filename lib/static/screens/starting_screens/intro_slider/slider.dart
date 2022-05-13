import 'dart:io';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/widgets/button.dart';
import 'package:investors_lounge/static/widgets/button2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../login.dart';
import '../signup.dart';
import 'data.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? primary : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: height * 0.7,
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    slideIndex = index;
                  });
                },
                children: <Widget>[
                  SlideTile(
                    imagePath: mySLides[0].getImageAssetPath(),
                    title: mySLides[0].getTitle(),
                    desc1: mySLides[0].getDesc1(),
                    desc2: mySLides[0].getDesc2(),
                    desc3: mySLides[0].getDesc3(),
                  ),
                  SlideTile(
                    imagePath: mySLides[1].getImageAssetPath(),
                    title: mySLides[1].getTitle(),
                    desc1: mySLides[1].getDesc1(),
                    desc2: mySLides[1].getDesc2(),
                    desc3: mySLides[1].getDesc3(),
                  ),
                  SlideTile(
                    imagePath: mySLides[2].getImageAssetPath(),
                    title: mySLides[2].getTitle(),
                    desc1: mySLides[2].getDesc1(),
                    desc2: mySLides[1].getDesc2(),
                    desc3: mySLides[1].getDesc3(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            ButtonWidget(
                text: 'Sign up',
                onClicked: () {
                 changeScreenReplacement(context, SignUp());
                }),
            ButtonWidget2(
                text: "Log in",
                onClicked: () {
                 changeScreenReplacement(context, Login());
                })
          ],
        ),
        bottomSheet: slideIndex != 3
            ? Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        controller.animateToPage(2,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      splashColor: Colors.black,
                      // child: Text(
                      //   "SKIP",
                      //   style: TextStyle(color: Color(0xFF0074E4), fontWeight: FontWeight.w600),
                      // ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          for (int i = 0; i < 3; i++)
                            i == slideIndex
                                ? _buildPageIndicator(true)
                                : _buildPageIndicator(false),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        print("this is slideIndex: $slideIndex");
                        controller.animateToPage(slideIndex + 1,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      },
                      splashColor: Colors.black,
                    ),
                  ],
                ),
              )
            : InkWell(
                onTap: () {
                  print("Get Started Now");
                },
                child: Container(
                  height: Platform.isIOS ? 70 : 60,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    "GET STARTED NOW",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc1, desc2, desc3;

  SlideTile({
    this.imagePath,
    this.title,
    this.desc1,
    this.desc2,
    this.desc3,
  });

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: width*0.05),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: height * 0.1,
            ),
            Image.asset(imagePath),
            SizedBox(
              height: height * 0.075,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22.sp, color: primary),
            ),
            SizedBox(
              height: height * 0.075,
            ),
            Padding(
              padding:  EdgeInsets.only(right:width*0.05, left: width*0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("\u2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
                      Text(desc1,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\u2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
                      Text(desc2,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("\u2022", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),),
                      Text(desc3,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
