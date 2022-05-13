import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  //final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key key,
    this.text,
    //this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final styleActive = TextStyle(color: Colors.grey);
    final styleHint = TextStyle(color: Colors.grey);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: height*0.05,
      margin:  EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[50],
        border: Border.all(color: Colors.black12),
      ),
      //padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        cursorColor: primary,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: width*0.14, vertical: height*0.01),isDense: true,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        //onChanged: widget.onChanged,
      ),
    );
  }
}