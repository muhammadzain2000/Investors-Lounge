import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/widgets/results/results_list_tile.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
     backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.04, vertical: height*0.015),
            child: Row(
              children: <Widget>[
                Text("Symbol", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                Spacer(),
                Text("EPS", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                Spacer(),
                Text("Divident%", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
                Spacer(),
                Text("Date", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.5.sp),),
              ],
            ),
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "AMBL",
            eps: "0.02",
            divident: "  -",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "FEROZ",
            eps: "20.02",
            divident: "100",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "FEROZ",
            eps: "32.39",
            divident: "75",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "SIBL",
            eps: "1.04",
            divident: "  -",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "AVN",
            eps: "1.85",
            divident: "25",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "AVN",
            eps: "1.91",
            divident: "  -",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "FML",
            eps: "11.44",
            divident: "14.3",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "OTSU",
            eps: "31.93",
            divident: "15",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "PSMC",
            eps: "14.54",
            divident: "  -",
            date: "31-Aug-21",
          ),
          Divider(thickness: 0.5, color: Colors.grey,),
          ResultsListTile(
            title: "KOHC",
            eps: "17.41",
            divident: "54",
            date: "31-Aug-21",
          ),

        ],
      ),
    );
  }
}
