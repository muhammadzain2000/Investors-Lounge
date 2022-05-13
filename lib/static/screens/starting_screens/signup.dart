import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/starting_screens/login.dart';
import 'package:investors_lounge/static/screens/starting_screens/verify_email.dart';
import 'package:investors_lounge/static/widgets/button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailtextController = TextEditingController();
  TextEditingController _passwordtextController = TextEditingController();
  TextEditingController _fnameController = TextEditingController();
  TextEditingController _lnameController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width*0.1, right: width*0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: height * 0.1,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: height*0.01),
                      child: Container(
                          alignment: Alignment.topCenter,
                          color: Colors.transparent,
                          child: Image.asset(
                            'images/logo.png',
                            //width: 260.0,
                            width: width*0.1,
                            //color: Colors.transparent,
                          )),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "INVESTORS",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "LOUNGE",
                      style: TextStyle(
                          fontSize: 22.sp,
                          color: primary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: TextFormField(
                  cursorColor: primary,
                  controller: _fnameController,
                  decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                      borderSide: BorderSide(color: Colors.grey[100]),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: BorderSide(color: Colors.grey[100])),
                    border: InputBorder.none,
                    hintText: "First Name",
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: TextFormField(
                  cursorColor: primary,
                  controller: _lnameController,
                  decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                      borderSide: BorderSide(color: Colors.grey[100]),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: BorderSide(color: Colors.grey[100])),
                    border: InputBorder.none,
                    hintText: "Last Name",
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:width*0.03),
                child: TextFormField(
                  cursorColor: primary,
                  controller: _emailtextController,
                  validator: (value) {
                    if (value.isEmpty) {
                      Pattern pattern =
                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                      RegExp regex = new RegExp(pattern);
                      if (!regex.hasMatch(value))
                        return 'Please make sure your email address is valid';
                      else
                        return null;
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                      borderSide: BorderSide(color: Colors.grey[100]),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: BorderSide(color: Colors.grey[100])),
                    border: InputBorder.none,
                    hintText: "Email Address",
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextFormField(
                      cursorColor: primary,
                      controller: _passwordtextController,
                      obscureText: _obscureText,
                      validator: (val) =>
                          val.length < 8 ? 'Password too short.' : null,
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(7.0),
                          borderSide: BorderSide(color: Colors.grey[100]),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide(color: Colors.grey[100])),
                        border: InputBorder.none,
                        hintText: "Password",
                        fillColor: Colors.grey[100],
                        filled: true,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: TextFormField(
                  cursorColor: primary,
                  controller: _phonenumberController,
                  decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                      borderSide: BorderSide(color: Colors.grey[100]),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: BorderSide(color: Colors.grey[100])),
                    border: InputBorder.none,
                    hintText: "Phone Number",
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
              //login button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: ButtonWidget(
                    text: 'Sign up',
                    onClicked: () {
                      changeScreenReplacement(context, VerifyEmail());
                    }),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  Login',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                changeScreenReplacement(context, Login());
                              },
                            style: TextStyle(color: primary, fontSize: 17.sp)),
                        //TextSpan(text: 'text!'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
