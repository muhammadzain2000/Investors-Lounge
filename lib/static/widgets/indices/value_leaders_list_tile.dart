import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';

class ValueLeadersListTile extends StatelessWidget {
  final String title;
  final String titleImage;
  final String volume;
  final String value;
  final String titleprice;
  final String subtitleprice;
  final VoidCallback onclick;

  const ValueLeadersListTile(
      {Key key,
        this.title,
        this.value,
        this.titleImage,
        this.subtitleprice,
        this.titleprice,
        this.volume,
        this.onclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ListTile(
      minVerticalPadding: -10,

      onTap: onclick,
      //contentPadding: EdgeInsets.only(right: 1),
      //horizontalTitleGap: 5,
      //dense: true,
      title: Row(
        children: <Widget>[
          Container(
            width: width * 0.25,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    titleImage,
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                ),
                SizedBox(
                  width: width * 0.01,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: primary, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Volume",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                volume,
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Value",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Text(
                value,
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                titleprice,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: height * 0.005,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    size: 13,
                    color: primary,
                  ),
                  Text(
                    subtitleprice,
                    style: TextStyle(
                        color: primary,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
