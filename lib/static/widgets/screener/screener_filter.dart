import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ScreenerFilter extends StatefulWidget {
  @override
  _ScreenerFilterState createState() => _ScreenerFilterState();
}

class _ScreenerFilterState extends State<ScreenerFilter> {
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
        title: Text(
          "Filters",
          style: TextStyle(color: Colors.black,fontSize: 18.5.sp),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: width*0.05, right: width*0.02),
            child: Row(
              children: <Widget>[
                Text(
                  "Fundamentals",
                  style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.help,color: Colors.grey,),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              dense: true,
              minVerticalPadding: -10,
              title: Text(
                "Price to Earning - (x)TTM",
                style: TextStyle(color: primary, fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Price to Book Value (x)",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Divident Yield (%)TTM",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Price to Sales (x)TTM",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Gross Margin (%)TTM",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Net Margin (%)TTM",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Operating Profit Margin (%)TTM",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Current Ratio (x)",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Debt to Equity Ratio (%)",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Debt to Asset Ratio (%)",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Return on Equity (%)",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Return on Assets (%)",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width*0.05, right: width*0.02),
            child: Row(
              children: <Widget>[
                Text(
                  "Technicals",
                  style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.help,color: Colors.grey,),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Daily RSI Overbought",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Daily RSI Oversold",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Weekly RSI Overbought",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: ListTile(
              minVerticalPadding: -10,
              dense: true,
              title: Text(
                "Weekly RSI Overbought",
                style: TextStyle(fontSize: 16.sp),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
