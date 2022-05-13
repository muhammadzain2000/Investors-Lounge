import 'package:dotted_line/dotted_line.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:investors_lounge/static/screens/tabbar/indices/overview.dart';
import 'package:investors_lounge/static/screens/tabbar/market/volume_leaders/hbl/overview/volume_trade.dart';

//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/market/volume_leaders/overview/volume_trade.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class VolumeLeadersOverviewTrg extends StatefulWidget {
  @override
  _VolumeLeadersOverviewTrgState createState() =>
      _VolumeLeadersOverviewTrgState();
}

class _VolumeLeadersOverviewTrgState extends State<VolumeLeadersOverviewTrg> {
  TooltipBehavior _tooltipBehavior;
  double _value1 = 0;
  double _value2 = 0;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(1924, 400),
      ChartData(1925, 410),
      ChartData(1926, 405),
      ChartData(1927, 410),
      ChartData(1928, 350),
      ChartData(1929, 370),
      ChartData(1930, 500),
      ChartData(1931, 390),
      ChartData(1932, 450),
      ChartData(1933, 440),
      ChartData(1934, 350),
      ChartData(1935, 370),
      ChartData(1936, 480),
      ChartData(1937, 410),
      ChartData(1938, 530),
      ChartData(1939, 520),
      ChartData(1940, 390),
      ChartData(1941, 360),
      ChartData(1942, 405),
      ChartData(1943, 400),
    ];
    final List<Color> color = <Color>[];
    // color.add(Colors.blue[50]);
    // color.add(Colors.blue[200]);
    // color.add(Colors.blue);
    color.add(Colors.green[50]);
    color.add(Colors.green[200]);
    color.add(primary);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
    LinearGradient(colors: color, stops: stops);

    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/volume_leaders/trg.jpg",
                    width: width * 0.1,
                    height: height * 0.1,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "18.52",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19.sp),
                      ),
                     // SizedBox(height: height*0.01,),
                      Text(
                        "-15.52(23.5%)",
                        style: TextStyle(color: Colors.redAccent, fontSize: 15.sp),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: height * 0.042,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          side: BorderSide(color: primary)),
                      elevation: 0.0,
                      onPressed: () {
                        //changeScreen(context, WatchListView());
                        changeScreen(context, VolumeTrade());
                      },
                      color: Color(0xff25cd9c),
                      child: Row(
                        children: [
                          Text(
                            "Trade",
                            style: TextStyle(color: Colors.white, fontSize: 17.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: width*1,
                height: height*0.4,
                child: SfCartesianChart(
                    primaryYAxis: NumericAxis(isVisible: false),
                    series: <ChartSeries>[
                      // Renders area chart
                      AreaSeries<ChartData, int>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x.toInt(),
                          yValueMapper: (ChartData data, _) => data.y,
                          gradient: gradientColors)
                    ]),
              ),

              SizedBox(
                height: height * 0.03,
              ),
              Text(
                "Stats",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              DottedLine(
                dashColor: Colors.grey,
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "P/E Ratio",
                        style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Div/Yield",
                        style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "P/B",
                        style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Net Margin(%)",
                        style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Current Ratio",
                        style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("47.33",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("41.53",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("48.00",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("40.47",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("65.25",style: TextStyle(fontSize: 15.sp),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "P/E Ratio",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Div/Yield",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "P/B",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Net Margin(%)",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text(
                        "Current Ratio",
                        style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                      ),

                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("45.25 M",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("68.36 M",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("500.65 M",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("178.25 M",style: TextStyle(fontSize: 15.sp),),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Text("8.36 M",style: TextStyle(fontSize: 15.sp),),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
