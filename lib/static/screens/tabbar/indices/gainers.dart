import 'package:flutter/material.dart';
import 'package:investors_lounge/static/widgets/indices/gainers_list_tile.dart';

class Gainers extends StatefulWidget {
  @override
  _GainersState createState() => _GainersState();
}

class _GainersState extends State<Gainers> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
        GainersListTile(
          titleImage: "images/volume_leaders/ogdc.png",
          title: "OGDC",
          volume: "3.01M",
          value: "1.11B",
          titleprice: "50.20",
          subtitleprice: "1.2 +12.05%",
          onclick: () {},
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
        ),
      ],
    );
  }
}
