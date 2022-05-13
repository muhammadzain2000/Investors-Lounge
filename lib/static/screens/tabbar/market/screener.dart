import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/widgets/filters.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/widgets/screener/screener_filter.dart';
import 'package:investors_lounge/static/widgets/screener/screener_list_tile.dart';

class Screener extends StatefulWidget {
  @override
  _ScreenerState createState() => _ScreenerState();
}

class _ScreenerState extends State<Screener> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    String dropdownValue = 'Industry';

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:width*0.03),
            child: Row(
              children: <Widget>[
                DropdownButton<String>(
                  value: dropdownValue,
                  icon:  Icon(Icons.keyboard_arrow_down, color: Colors.grey,size: 17.sp,),
                  elevation: 16,
                  style:  TextStyle(color: Colors.grey),
                  underline: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['Industry', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(fontSize: 15.sp),),
                    );
                  }).toList(),
                ),
                Spacer(),
                SizedBox(
                  height: height * 0.05,
                  child: TextButton(
                    onPressed: () {
                      changeScreen(context, ScreenerFilter());
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Filter By",
                          style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                        ),
                        Icon(
                          Icons.filter_alt,
                          color: primary,
                          size: 16.5.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          ScreenerListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            subtitle: "Oil and Gas Development Company",
            titleprice: "50.20",
            subtitileprice: "12.05%",
            onclick: (){},
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
