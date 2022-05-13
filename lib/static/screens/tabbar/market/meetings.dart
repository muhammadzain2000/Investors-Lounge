import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:investors_lounge/static/widgets/meetings/meetings_list_tile.dart';

class Meetings extends StatefulWidget {
  @override
  _MeetingsState createState() => _MeetingsState();
}

class _MeetingsState extends State<Meetings> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    String dropdownValue = 'Company';

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, right: width * 0.02),
            child: Row(
              children: <Widget>[
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                      size: 17.sp,
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.grey),
                    underline: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Company', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                Spacer(),
                Text(
                  "From",
                  style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                InkWell(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime.now())
                        .then((date) {
                      setState(() {
                        _dateTime = date;
                      });
                    });
                  },
                  child: Text(
                    "19-Sep-2021",
                    style: TextStyle(color: primary, fontSize: 15.sp),
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Text(
                  "To",
                  style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                InkWell(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime.now())
                        .then((date) {
                      setState(() {
                        _dateTime = date;
                      });
                    });
                  },
                  child: Text(
                    "19-Sep-2021",
                    style: TextStyle(color: primary, fontSize: 15.sp),
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                InkWell(
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime.now())
                        .then((date) {
                      setState(() {
                        _dateTime = date;
                      });
                    });
                  },
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 16.sp,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 12),
            child: Row(
              children: <Widget>[
                Text(
                  "Symbol",
                  style: TextStyle(fontSize: 15.5.sp),
                ),
                Spacer(),
                SizedBox(
                    width: width * 0.2,
                    child: Text(
                      "Time",
                      style: TextStyle(fontSize: 15.5.sp),
                    )),
                SizedBox(
                  width: width * 0.08,
                ),
                SizedBox(
                    width: width * 0.15,
                    child: Text(
                      "Place",
                      style: TextStyle(fontSize: 15.5.sp),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/ogdc.png",
            title: "OGDC",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Lahore",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/hbl.png",
            title: "HBL",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Karachi",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/searle.png",
            title: "SEARLE",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Multan",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/trg.png",
            title: "TRG",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Quetta",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/engro.png",
            title: "ENGRO",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Islamabad",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/hubco.png",
            title: "HUBCO",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Peshawar",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/suzuki.png",
            title: "PSMC",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "Kashmir",
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          MeetingsListTile(
            image: "images/volume_leaders/pso.png",
            title: "PSO",
            time: "   14:00",
            date: "2 Sep 2021",
            city: "karachi",
          ),
        ],
      ),
    );
  }
}
