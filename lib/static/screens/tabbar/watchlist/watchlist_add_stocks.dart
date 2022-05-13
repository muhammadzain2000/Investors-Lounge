import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/widgets/search_bar.dart';

class WatchListAddStocks extends StatefulWidget {
  @override
  _WatchListAddStocksState createState() => _WatchListAddStocksState();
}

class _WatchListAddStocksState extends State<WatchListAddStocks> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: SearchWidget(
          text: "abc",
          hintText: "Search by name or Symbol",
          //onChanged: ,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.only(left:width*0.04, top: height*0.01),
            child: Text("Add Stocks to Watchlist", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.check_circle, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.check_circle, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.check_circle, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.check_circle, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.add_circle_outline_outlined, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.add_circle_outline_outlined, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.add_circle_outline_outlined, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: ListTile(
              minVerticalPadding: -10,
              title: Row(
                children: [
                  Image.asset("images/volume_leaders/ogdc.png",width: width*0.1, height: height*0.1,),
                  SizedBox(width: width*0.03,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OGDC", style: TextStyle(fontSize: 17.sp),),
                      Text("Oil and Gas Development Compant", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.add_circle_outline_outlined, color: primary,size: 21.sp,)
                ],
              ),
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),



        ],
      ),
    );
  }
}
