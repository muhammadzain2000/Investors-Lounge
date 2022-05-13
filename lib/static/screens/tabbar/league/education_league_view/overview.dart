import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/indices/overview.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class LeagueOverview extends StatefulWidget {
  @override
  _LeagueOverviewState createState() => _LeagueOverviewState();
}

class _LeagueOverviewState extends State<LeagueOverview> {
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
          padding: EdgeInsets.symmetric(horizontal: width*0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.02,),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Net Worth", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                      SizedBox(height: height*0.01,),
                      Text("1,062,304", style: TextStyle(fontSize: 16.sp),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("Total Gain/ Loss", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                      SizedBox(height: height*0.01,),
                      Text("62,304(+6.2)", style: TextStyle(fontSize: 16.sp),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("Cash in hand", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                      SizedBox(height: height*0.01,),
                      Text("468,241", style: TextStyle(fontSize: 16.sp),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("Rank", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                      SizedBox(height: height*0.01,),
                      Text("7th", style: TextStyle(fontSize: 16.sp),),
                    ],

                  ),
                ],
              ),
              SizedBox(height: height*0.03,),
              Text("Portfolio Performance", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.02,),
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
              SizedBox(height: height*0.03,),
              Text("Portfolio Allocation", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.02,),
              Center(
                child: Container(
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
