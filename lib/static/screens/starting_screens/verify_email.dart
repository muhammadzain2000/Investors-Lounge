import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/homePage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:investors_lounge/static/widgets/button.dart';

class VerifyEmail extends StatefulWidget {
  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  TextEditingController _verifyemailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: height * 0.05,
            ),
            Container(
                alignment: Alignment.topCenter,
                color: Colors.transparent,
                child: Image.asset(
                  'images/verifyemail.png',
                  //width: 260.0,
                  width: width * 0.35,
                  height: height * 0.22,
                  //color: Colors.transparent,
                )),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Verify Your Email",
              style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Text(
              "To continue, please enter the verification code\n              we sent to your email address",
              style: TextStyle(fontSize: 16.sp, color: Colors.black87),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "hassanjamil@gmail.com",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                      color: primary, icon: Icon(Icons.edit), onPressed: () {}),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorColor: primary,
                controller: _verifyemailController,
                decoration: new InputDecoration(
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(7.0),
                    borderSide: BorderSide(color: Colors.grey[100]),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      borderSide: BorderSide(color: Colors.grey[100])),
                  border: InputBorder.none,
                  hintText: "000000",
                  fillColor: Colors.grey[100],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            ButtonWidget(
                text: "Verify",
                onClicked: () {
                  changeScreenReplacement(context, HomePage());
                }),
            SizedBox(
              height: height * 0.01,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Resend Code",
                  style: TextStyle(color: primary, fontSize: 18.sp),
                )),
          ],
        ),
      ),
    );
  }
}
