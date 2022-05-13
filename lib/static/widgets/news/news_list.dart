import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';

class NewsList extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String imagepath;
  final VoidCallback onclick;

  const NewsList({
    Key key, this.title, this.subtitle, this.time, this.imagepath, this.onclick,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.0),
      child: ListTile(
        //horizontalTitleGap: -40,
        visualDensity: VisualDensity(horizontal: 0, vertical: 4),
        //dense: true,
        hoverColor: primary,
        onTap: onclick,

        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18), maxLines: 2, overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Row(
          children: <Widget>[
            Text(
              subtitle,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Spacer(),
            Text(
              time,
              style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
              iconSize: 18,
              color: Colors.grey,
            ),
          ],
        ),
        // leading: Image.asset(
        //   imagepath,fit: BoxFit.fitWidth, width: width*0.4,
        // ),
        leading: Image(

          height: height* 3.0,
          width: width*0.3,
          fit: BoxFit.fitWidth,
          image: AssetImage(
            imagepath,
          ),
        ),
      ),
    );
  }
}
