import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:investors_lounge/static/screens/tabbar/watchlist/watchlist_add_stocks.dart';

class WatchListListTile extends StatefulWidget {
  @override
  _WatchListListTileState createState() => _WatchListListTileState();
}

class _WatchListListTileState extends State<WatchListListTile> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeScreen(context, WatchListAddStocks());
          },
          backgroundColor: primary,
          child:  Icon(
            Icons.add,
            size: 27.sp,
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            ListTile(
              minVerticalPadding: -10,
              title: Padding(
                padding:  EdgeInsets.only(top: height*0.01),
                child: Row(
                  children: [
                    Image.asset(
                      "images/volume_leaders/hbl.png",
                      width: width * 0.1,
                      height: height * 0.1,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "HBL",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.5.sp),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "15.44",
                          style: TextStyle(
                              fontSize: 16.5.sp, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_downward,
                              size: 16.sp,
                              color: Colors.redAccent,
                            ),
                            Text(
                              "23.12 -3.02%",
                              style: TextStyle(
                                  fontSize: 16.5.sp, color: Colors.redAccent),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(

                            title:  Text('Remove Stock from Watchlist', style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.bold),),
                            content:  Text(
                                'Are you sure you want to remove alert on OGDC?',style: TextStyle(fontSize: 16.sp),),
                            actions: <Widget>[
                              SizedBox( width: MediaQuery.of(context).size.width,
                              child: Row(children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.35,
                                  height: MediaQuery.of(context).size.height * 0.07,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7.0),
                                        side: BorderSide(color: Colors.white)),
                                    elevation: 0.0,
                                    onPressed: () {Navigator.pop(context, 'OK');},
                                    color: Colors.white,
                                    child: Text(
                                      "cancel",
                                      style: TextStyle(
                                          color: primary, fontSize: 17.sp),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.35,
                                  height: MediaQuery.of(context).size.height * 0.055,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7.0),
                                        side: BorderSide(color: primary)),
                                    elevation: 0.0,
                                    onPressed: () {Navigator.pop(context, 'OK');},
                                    color: Color(0xff25cd9c),
                                    child: Text(
                                      "Confirm",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.sp),
                                    ),
                                  ),
                                ),
                              ],),
                              ),

                            ],
                          ),
                        );
                      },
                      child: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                        size: 16.5.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 0.3,
              color: Colors.grey,
            )
          ],
        ));
  }
}
