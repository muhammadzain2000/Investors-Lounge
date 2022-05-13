import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/bottom_navbar/news_feed.dart';
import 'package:investors_lounge/static/screens/homePage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              //alignment: Alignment.bottomLeft,
              children: <Widget>[
                Container(
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(50.0),
                    )),
                    child: Image.asset("images/news/petrolhike.jpg")),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: primary,
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.text_fields),
                      onPressed: () {},
                      color: primary,
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                      color: primary,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 180.0, left: 8.0, right: 8.0),
                  child: Text(
                    "Opp slams govt over 'most cruel'\npetrol hike",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "PML-N president says those who are supporting this regime will face people's ire",
                style: TextStyle(color: Colors.grey, fontSize: 16.sp,height: 1.5),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "images/news/Tribune.png",
                        height: height * 0.04,
                        width: width * 0.04,
                        fit: BoxFit.scaleDown,
                      )),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "The Tribune Express    ",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "40m",
                    style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                  ),
                  //Text("17 February 2022", style: TextStyle(color: Colors.grey, fontSize: 12),),
                ],
              ),
            ),

            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "The opposition leaders lambasted the Pakistan Tehreek-e-Insaf(PTI) on Wednesday for a record hike in the price of petroleum products, calling the increase in the price like exploding a 'petrol bomb' on people.",
                style: TextStyle(
                    fontSize: 16.sp, fontWeight: FontWeight.bold, height: 2),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "A day earlier, at the stroke of midnight, the government made a massive increase of up tp Rs12.03 per litre in the price of petroleum products, taking that of petrol to a record level of Rs159.86 per litre effective from February 16.The price of petrol broke all previous records by reaching the Rs160 per litre mark.",
                style: TextStyle(fontSize: 16.sp, height: 2),
              ),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.all(15.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Padding(
    //             padding: const EdgeInsets.only(left:8.0),
    //             child: Text("Opp slams govt over 'most cruel' petrol hike", style: TextStyle(fontSize: 22, color: primary, fontWeight: FontWeight.bold),),
    //           ),
    //
    //           SizedBox(height: height*0.02,),
    //           Padding(
    //             padding: const EdgeInsets.only(left:8.0),
    //             child: Text("PML-N president says those who are supporting this regime will face people's ire", style: TextStyle(color: Colors.grey, fontSize: 15),),
    //           ),
    //           SizedBox(height: height*0.01,),
    //           Padding(
    //             padding: const EdgeInsets.only(left:8.0),
    //             child: Row(
    //               children: <Widget>[
    //                 ClipRRect(
    //                     borderRadius: BorderRadius.circular(100),
    //                     child: Image.asset("images/news/Tribune.png", height: height*0.04, width: width*0.04,fit: BoxFit.scaleDown,)),
    //                 SizedBox(width: width*0.02,),
    //                 Text("The Tribune Express    ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
    //                 Text("40m", style: TextStyle(color: Colors.grey, fontSize: 12),),
    //                 //Text("17 February 2022", style: TextStyle(color: Colors.grey, fontSize: 12),),
    //               ],
    //             ),
    //           ),
    //           SizedBox(height: height*0.01,),
    //           Padding(
    //             padding: const EdgeInsets.only(left:8.0),
    //             child: Container(
    //                 width: width*1,
    //                 child: Image.asset("images/news/petrolhike.jpg",)),
    //           ),
    //           SizedBox(height: height*0.01,),
    //           Padding(
    //             padding: const EdgeInsets.only(left:8.0),
    //             child: Text(
    //               "The opposition leaders lambasted the Pakistan Tehreek-e-Insaf(PTI) on Wednesday for a record hike in the price of petroleum products, calling the increase in the price like exploding a 'petrol bomb' on people.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, height: 2),),
    //           ),
    //           SizedBox(height: height*0.03,),
    //           Padding(
    //             padding: const EdgeInsets.only(left:8.0),
    //             child: Text(
    //               "A day earlier, at the stroke of midnight, the government made a massive increase of up tp Rs12.03 per litre in the price of petroleum products, taking that of petrol to a record level of Rs159.86 per litre effective from February 16.The price of petrol broke all previous records by reaching the Rs160 per litre mark.", style: TextStyle(fontSize: 15,height: 2),),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
