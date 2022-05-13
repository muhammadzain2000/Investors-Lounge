import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.01),
            child: Container(
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.02),
            child: Text(
              "STATS",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey[300],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.01),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "VOLUME",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text("33.5M",style: TextStyle(fontSize: 14.5.sp),),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "VALUE",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text("12.5B",style: TextStyle(fontSize: 14.5.sp),),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "1 YEAR CHANGE",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      "-2.65%",
                      style: TextStyle(color: Colors.red, fontSize: 14.5.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.02),
            child: Text(
              "DAY'S RANGE",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey[300],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.01),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Low",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    Text(
                      "33,957.2",
                      style: TextStyle(color: primary, fontSize: 14.5.sp),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: width * 0.6,
                  child: Slider(
                    min: 0,
                    activeColor: primary,
                    inactiveColor: Colors.greenAccent,
                    divisions: 20,
                    label: _value1.round().toString(),
                    max: 100,
                    value: _value1,
                    onChanged: (value) {
                      setState(() {
                        _value1 = value;
                      });
                    },
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "High",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    Text(
                      "34,423.52",
                      style: TextStyle(color: primary, fontSize: 14.5.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.02),
            child: Text(
              "52 WEEK RANGE",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey[300],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02,vertical: height*0.01),
            child: Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Low",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    Text(
                      "33,957.2",
                      style: TextStyle(color: primary, fontSize: 14.5.sp),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: width * 0.6,
                  child: Slider(
                    min: 0,
                    activeColor: primary,
                    inactiveColor: Colors.greenAccent,
                    divisions: 20,
                    label: _value1.round().toString(),
                    max: 100,
                    value: _value2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value;
                      });
                    },
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "High",
                      style: TextStyle(color: Colors.grey, fontSize: 14.5.sp),
                    ),
                    Text(
                      "34,423.52",
                      style: TextStyle(color: primary, fontSize: 14.5.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y);

  final double x;
  final double y;
}
