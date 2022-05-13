import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Instructor extends StatefulWidget {
  @override
  _InstructorState createState() => _InstructorState();
}

class _InstructorState extends State<Instructor> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Baqar Jafri is an award - winning fintech entrepreneur with over 12 hyears of experience in financial markets and data-driven investing. He is the Founder and Chief Data Scientist of Investors Lounge, Pakistan's top financial intellignece platform. He also serve as Founding Director of Pakistan Fintech Network, the leading association of fintech companies that aim to digitize financial ecosystem of the country. He has introduced Robo-Advisory technology in Pakistan and helped SECP in developing regulatory framework as part of SECP Sandbox Program",
                style: TextStyle(
                  fontSize: 16.sp,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              Row(
                children: [
                  Image.asset(
                    "images/instructor/facebook.png",
                    height: height * 0.06,
                    width: width * 0.07,
                  ),
                  SizedBox(width: width*0.01,),
                  Image.asset(
                    "images/instructor/twitter.png",
                    height: height * 0.06,
                    width: width * 0.07,
                  ),
                  SizedBox(width: width*0.02,),
                  Image.asset(
                    "images/instructor/linkedin.png",
                    height: height * 0.045,
                    width: width * 0.055,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
