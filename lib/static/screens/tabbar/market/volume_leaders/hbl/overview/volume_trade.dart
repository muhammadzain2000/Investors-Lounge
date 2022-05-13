import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/hbl/overview/volume_trade_Sell.dart';
import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/hbl/overview/volume_trade_buy.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class VolumeTrade extends StatefulWidget {
  @override
  _VolumeTradeState createState() => _VolumeTradeState();
}

class _VolumeTradeState extends State<VolumeTrade> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: 0,
          iconTheme: IconThemeData(
            color: primary, //change your color here
          ),
          title: Text("Pakistan Investing League",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19.sp),),
        bottom: ButtonsTabBar(
          backgroundColor: primary,
          labelStyle: TextStyle(color: Colors.white, fontSize: 15.sp,fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),
          //borderWidth: 1,

          physics: NeverScrollableScrollPhysics(),
          radius: 3,
          height: height*0.04,
          buttonMargin: EdgeInsets.symmetric(horizontal: width*0.01),
          borderColor: primary,
          //unselectedBorderColor: Colors.white,
          tabs: [
            Tab(
              text: "           BUY           ",
            ),
            Tab(
              text: "           SELL           ",
            ),

          ],
        ),
        ),
        body:  TabBarView(
          children: [
            VolumeTradeBuy(),
            VolumeTradeSell(),
          ],
        ),
      ),
    );
  }
}
