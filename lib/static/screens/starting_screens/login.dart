import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/homePage.dart';
import 'package:investors_lounge/static/screens/starting_screens/signup.dart';
import 'package:investors_lounge/static/widgets/button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailtextController = TextEditingController();
  TextEditingController _passwordtextController = TextEditingController();
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
          padding: EdgeInsets.only(left: width*0.075, right: width*0.075, top: height*0.05),
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
                            width: width * 0.1,
                            //color: Colors.transparent,
                          )),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "INVESTORS",
                      style: TextStyle(
                          fontSize: 23.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "LOUNGE",
                      style: TextStyle(
                          fontSize: 23.sp,
                          color: primary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
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
                    border: InputBorder.none,
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(7.0),
                      borderSide: BorderSide(color: Colors.grey[100]),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: BorderSide(color: Colors.grey[100])),

                    //border: InputBorder.none,
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
                child: Container(
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      TextFormField(
                        cursorColor: primary,
                        obscureText: _obscureText,
                        controller: _passwordtextController,
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
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
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
              ),

              //forgot password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(color: Colors.black, fontSize: 16.5.sp),
                    )),
              ),

              SizedBox(
                height: height * 0.07,
              ),
              //login button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.03),
                child: ButtonWidget(
                    text: 'Log in',
                    onClicked: () {
                      changeScreenReplacement(context, HomePage());
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
                      text: "Don't have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 17.sp),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  Sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                changeScreenReplacement(context, SignUp());
                              },
                            style: TextStyle(
                              color: primary,
                              fontSize: 17.sp,
                            )),
                        //TextSpan(text: 'text!'),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
