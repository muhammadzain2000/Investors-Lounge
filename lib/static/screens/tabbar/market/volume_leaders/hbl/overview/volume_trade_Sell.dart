import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/market/volume_leaders/overview/volume_review.dart';
import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/hbl/overview/volume_review.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class VolumeTradeSell extends StatefulWidget {
  @override
  _VolumeTradeSellState createState() => _VolumeTradeSellState();
}

class _VolumeTradeSellState extends State<VolumeTradeSell> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text("Pakistan Investing League"),
          value: "Pakistan Investing League"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  String selectedValue = "Pakistan Investing League";

  //var myTextEditingController = TextEditingController();

  TextEditingController _shares = TextEditingController();
  TextEditingController _marketPrice = TextEditingController();
  TextEditingController _maxBuying = TextEditingController();
  TextEditingController _currentHolding = TextEditingController();
  TextEditingController _estimatedCost = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final maxLines = 5;


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.04, right: width * 0.02),
            child: Column(
              children: [
                SizedBox(height: height*0.03,),
                Row(
                  children: [
                    Row(
                      children: <Widget>[
                        Text(
                          "HBL",
                          style: TextStyle(color: primary, fontSize: 18.sp,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Spacer(),
                    Icon(
                      Icons.help,
                      size: 15.sp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Container(
                      width: width * 0.5,
                      height: height * 0.045,
                      child: DropdownButtonFormField(
                          style: TextStyle(color: primary,fontSize: 15.sp),
                          isDense: true,
                          iconSize: 20.sp,
                          iconDisabledColor: Colors.black,
                          iconEnabledColor: Colors.black,
                          isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 2),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: primary, width: 1),
                              //borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          dropdownColor: Colors.white,
                          value: selectedValue,
                          onChanged: (String newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                          items: dropdownItems),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "PKR",
                      style: TextStyle(fontSize: 13.sp),
                    ),
                    Text(
                      "10,000 ",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Text(
                      " available",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Row(
                  children: [
                    Text(
                      "Number of Shares",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Spacer(),
                    SizedBox(
                      width: width * 0.5,
                      child: TextFormField(
                        //initialValue: "0",
                        keyboardType: TextInputType.number,
                        cursorColor: primary,
                        textAlign: TextAlign.right,
                        //controller: myTextEditingController,
                        controller: _shares,
                        decoration: new InputDecoration.collapsed(
                          hintText: 'Enter number of shares',
                        ),
                        validator: (value) {
                          if (value == '0' || value.isEmpty) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Alert",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.sp),
                                        )),
                                    content: Text(
                                      "Share quantity field can't be empty not\n               quantity should be 0",
                                      style: TextStyle(
                                          fontSize: 16.sp, height: 1.5),
                                    ),
                                    actions: <Widget>[
                                      // usually buttons at the bottom of the dialog
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: width * 0.27),
                                        child: FlatButton(
                                          child: Text(
                                            "Dismiss",
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 16.sp),
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          } else {
                            debugPrint("xyz");
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Row(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "18.52",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        Text(
                          "-0.41 (-0.46%)",
                          style: TextStyle(fontSize: 16.sp,color: Colors.redAccent),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Row(
                  children: [
                    Text(
                      "Max Buying Power (shares)",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "1,000",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Row(
                  children: [
                    Text(
                      "Current Holding (shares)",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "500",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                Row(
                  children: [
                    Text(
                      "Estimated Cost",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "1852.00",
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(height: height*0.02,),
                Align(alignment: Alignment.centerLeft,child: Text("Add a comment:",style: TextStyle(fontSize: 15.5.sp),)),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  //margin: EdgeInsets.all(12),
                  height: maxLines * 24.0,
                  child: TextFormField(
                    cursorColor: primary,
                    maxLines: maxLines,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary,),
                      ),
                      hintText: "Add a comment make your transitions remindable",
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  width: width * 0.35,
                  height: height * 0.04,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: BorderSide(color: primary)),
                    elevation: 0.0,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Bought HBL",
                                      style: TextStyle(
                                          color: primary,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp),
                                    )),
                                content: RichText(
                                  text: TextSpan(
                                    children:  <TextSpan>[
                                      TextSpan(text: 'You bought shares', style: TextStyle(color: Colors.black, fontSize: 16.sp)),
                                      TextSpan(text: ' 500', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.sp)),
                                      TextSpan(text: ' of', style: TextStyle(color: Colors.black, fontSize: 16.sp)),
                                      TextSpan(text: ' HBL', style: TextStyle(color: primary, fontWeight: FontWeight.bold, fontSize: 16.sp)),
                                      TextSpan(text: ' at Rs.', style: TextStyle(color: Colors.black, fontSize: 16.sp)),
                                      TextSpan(text: ' ofofofofofof'),
                                      TextSpan(text: '18.52', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.sp)),
                                      TextSpan(text: ' per share', style: TextStyle(color: Colors.black, fontSize: 16.sp)),
                                    ],
                                  ),
                                ),
                                actions: <Widget>[
                                  // usually buttons at the bottom of the dialog
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width * 0.29),
                                    child: FlatButton(
                                      child: Text(
                                        "Dismiss",
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 16.sp),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              );
                            });
                      }
                      //changeScreen(context, VolumeReview());
                    },
                    color: Color(0xff25cd9c),
                    //shape: ,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 17.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
