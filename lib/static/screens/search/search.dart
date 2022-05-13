import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/hbl/volume_leaders_detail.dart';
import 'package:investors_lounge/static/widgets/search_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
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
          SizedBox(height: height*0.01,),
          Padding(
            padding:  EdgeInsets.only(left:width*0.04),
            child: Text("Stocks", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: height*0.01,),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: (){changeScreen(context, VolumeLeadersDetail());},
            minVerticalPadding: -10,
            title: Row(
              children: [
                Image.asset("images/volume_leaders/hbl.png",width: width*0.1, height: height*0.1,),
                SizedBox(width: width*0.03,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("HBL", style: TextStyle(fontSize: 17.sp),),
                    Text("Habib Bank Limited", style: TextStyle(fontSize: 15.sp, color: Colors.grey),),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
          ListTile(
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
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
