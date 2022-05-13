import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/overview.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class AnalystCallTrg extends StatefulWidget {
  @override
  _AnalystCallTrgState createState() => _AnalystCallTrgState();
}

class _AnalystCallTrgState extends State<AnalystCallTrg> {
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

    final List<DoughnutChartData> doughnut_chart_data = [
      DoughnutChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
      DoughnutChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
      DoughnutChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children:  <TextSpan>[
                    TextSpan(
                        text: 'Disclaimer:',
                        style: TextStyle(
                             color: Colors.black, fontSize: 14.sp)),
                    TextSpan(
                      text:
                          ' This information is just for the refernce purposes and does not constitute an investment recommendation',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        height: 1.5
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: height*0.015, bottom: height*0.018),
                child: Text(
                  "Analyst Price Target",
                  style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "PKR",
                    style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                  ),
                  Text(
                    "18.55",
                    style: TextStyle(
                        color: primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp),
                  )
                ],
              ),
              SizedBox(height: height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_upward,
                    size: 16.sp,
                    color: primary,
                  ),
                  Text(
                    "45.33% (Upside)",
                    style: TextStyle(color: primary, fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(height: height*0.01,),
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
              SizedBox(height: height*0.01,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*0.01),
                child: RichText(
                  text: TextSpan(
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'The average price target is',
                          style: TextStyle(color: Colors.black54, height: 1.5)),
                      TextSpan(
                        text: ' 18.52',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black, height: 1.5),
                      ),
                      TextSpan(
                        text: ' with high estimate of',
                        style: TextStyle(color: Colors.black54, height: 1.5),
                      ),
                      TextSpan(
                        text: ' 30.22',
                        style: TextStyle(color: Color(0xff25cd9c), height: 1.5),
                      ),
                      TextSpan(
                        text: ' and a low estimate of',
                        style: TextStyle(color: Colors.black54, height: 1.5),
                      ),
                      TextSpan(
                        text: ' 12.00',
                        style: TextStyle(color: Colors.redAccent, height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Text(
                "Analyst Consensus",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                      height: height * 0.25,
                      width: width * 0.4,
                      child: SfCircularChart(series: <CircularSeries>[
                        DoughnutSeries<DoughnutChartData, String>(
                            dataSource: doughnut_chart_data,
                            xValueMapper: (DoughnutChartData data, _) => data.x,
                            yValueMapper: (DoughnutChartData data, _) => data.y,
                            // Radius of doughnut's inner circle
                            innerRadius: '70%')
                      ])),
                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.05),
                    child: Column(
                      children: [
                        Text(
                          "Strong Buy",
                          style: TextStyle(
                              color: primary,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text("Based on 10\nAnalyst Calls",style: TextStyle(fontSize: 15.sp),),
                      ],
                    ),
                  )
                ],
              ),
              Text(
                "Ratings",
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
               height: height*0.01,
              ),
              Container(
                height: height * 0.05,
                color: Colors.black12,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*0.02),
                  child: Row(
                    children: [
                      Text("Provider", style: TextStyle(fontSize: 15.5.sp),),
                      Spacer(),
                      Text("Recommendation", style: TextStyle(fontSize: 15.5.sp),),
                      Spacer(),
                      Text("Target", style: TextStyle(fontSize: 15.5.sp),),
                      Spacer(),
                      Text("Upside %", style: TextStyle(fontSize: 15.5.sp),)
                    ],
                  ),
                ),
              ),
              ListTile(
                minVerticalPadding: -10,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "images/list_images/bull.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Text(
                      "Taurus\nSecurities",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Text(
                      "201",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "150.47",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              ListTile(
                minVerticalPadding: -10,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "images/list_images/bull.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Text(
                      "Taurus\nSecurities",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Text(
                      "201",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "150.47",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              ListTile(
                minVerticalPadding: -10,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "images/list_images/bull.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Text(
                      "Taurus\nSecurities",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Text(
                      "201",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "150.47",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              ListTile(
                minVerticalPadding: -10,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "images/list_images/bull.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Text(
                      "Taurus\nSecurities",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Text(
                      "201",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "150.47",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              ListTile(
                minVerticalPadding: -10,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "images/list_images/bull.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Text(
                      "Taurus\nSecurities",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Text(
                      "201",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "150.47",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              ListTile(
                minVerticalPadding: -10,
                contentPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    Image.asset(
                      "images/list_images/bull.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Text(
                      "Taurus\nSecurities",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    ),
                    SizedBox(
                      width: width * 0.22,
                    ),
                    Text(
                      "201",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.sp),
                    ),
                    Spacer(),
                    Text(
                      "150.47",
                      style: TextStyle(color: primary,fontSize: 16.sp),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoughnutChartData {
  DoughnutChartData(this.x, this.y, [this.color]);

  final String x;
  final double y;
  final Color color;
}

class ChartData {
  ChartData(this.x, this.y);

  final double x;
  final double y;
}
