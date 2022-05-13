import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/trg/fundamentals/profitability_trg.dart';
//import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/trg/financials/profitability_trg.dart';

class VolumeLeadersFundamentalsTrg extends StatefulWidget {
  @override
  _VolumeLeadersFundamentalsTrgState createState() =>
      _VolumeLeadersFundamentalsTrgState();
}

class _VolumeLeadersFundamentalsTrgState
    extends State<VolumeLeadersFundamentalsTrg> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.0, vertical: height*0.01),
              child: Column(
                children: [
                  ButtonsTabBar(
                    backgroundColor: Colors.white,
                    labelStyle: TextStyle(color: primary, fontSize: 15.sp),
                    unselectedLabelStyle: TextStyle(color: Colors.black45,fontSize: 15.sp),
                    borderWidth: 1,
                    physics: NeverScrollableScrollPhysics(),
                    radius: 3,
                    height: height*0.04,
                    buttonMargin: EdgeInsets.symmetric(horizontal: width*0.01),
                    borderColor: primary,
                    unselectedBorderColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "  Profitability  ",
                      ),
                      Tab(
                        text: "  Growth  ",
                      ),
                      Tab(
                        text: "  Solvency Ratios  ",
                      ),
                      Tab(
                        text: "  Equity Value  ",
                      ),
                    ],
                  ),
                  Container(
                    height: height*1,
                    child: TabBarView(
                      children: [
                        ProfitabilityTrg(),
                        Text("b"),
                        Text("c"),
                        Text("d"),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
