import 'package:flutter/material.dart';
import 'package:investors_lounge/static/widgets/filings/filing_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Filings extends StatefulWidget {
  @override
  _FilingsState createState() => _FilingsState();
}

class _FilingsState extends State<Filings> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          FilingList(
            imagePath: "images/filings/image1.png",
            title: "Security Investment Bank Limited",
            subtitle: "Corporate Briefing Session for the Year 2020",
            time: "1m",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
          FilingList(
            imagePath: "images/filings/image2.png",
            title: "Kohinoor Energy Limited",
            subtitle: "Transmission of Quarterly Report for the period Ended 31-03-2021",
            time: "6m",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
          FilingList(
            imagePath: "images/filings/image3.png",
            title: "Nishat Chunian Limited",
            subtitle: "Dispatch of Bonus Share Certificates",
            time: "1D",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
          FilingList(
            imagePath: "images/filings/image4.jpg",
            title: "Al-Shaheer Corporation limited",
            subtitle: "Board Meeting In Progress",
            time: "2D",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
          FilingList(
            imagePath: "images/filings/image5.png",
            title: "United Bank Limited",
            subtitle: "Dispatch of Bonus Share Certificates",
            time: "10D",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
          FilingList(
            imagePath: "images/filings/image6.png",
            title: "Oil and Gas Development",
            subtitle: "Dispatch of Bonus Share Ceritficates",
            time: "2M",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
          FilingList(
            imagePath: "images/filings/image7.png",
            title: "Systems Limited",
            subtitle: "Credit/Dispatch of Bonus Share Certificates",
            time: "5M",
            onclick: (){},
          ),
          Divider(thickness: 0.5,),
        ],
      ),
    );
  }
}
