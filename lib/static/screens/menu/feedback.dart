import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class SendFeedback extends StatefulWidget {
  @override
  _SendFeedbackState createState() => _SendFeedbackState();
}

class _SendFeedbackState extends State<SendFeedback> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final maxLines = 15;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(onTap: (){Navigator.pop(context);}
            ,child: Icon(Icons.arrow_back_ios_rounded)),
        elevation: 0.0,
        titleSpacing: -10,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        title: Row(
          children: [
            Icon(
              Icons.message,
              color: primary,
            ),
            SizedBox(
              width: width * 0.015,
            ),
            Text(
              "Feedback",
              style:
              TextStyle(color: Colors.black, fontSize: 19.sp),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("We would love to hear your feedback on your experience with this app",style: TextStyle(fontSize: 15.5.sp),),
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
                      borderSide: BorderSide(color: primary,),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary,),
                    ),
                    hintText: "Please leave your comments here",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: width * 0.30,
                  height: height * 0.05,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                        side: BorderSide(color: primary)),
                    elevation: 0.0,
                    onPressed: () {
                      //changeScreen(context, VolumeReview());
                    },
                    color: Color(0xff25cd9c),
                    //shape: ,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Text(
                      "Send",
                      style: TextStyle(color: Colors.white, fontSize: 17.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
