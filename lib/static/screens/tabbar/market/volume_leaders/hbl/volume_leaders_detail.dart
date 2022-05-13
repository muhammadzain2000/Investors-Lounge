import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'overview/volume_overview.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/market/volume_leaders/overview/volume_overview.dart';

class VolumeLeadersDetail extends StatefulWidget {
  @override
  _VolumeLeadersDetailState createState() => _VolumeLeadersDetailState();
}

class _VolumeLeadersDetailState extends State<VolumeLeadersDetail> {
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Example share',
        text: 'Example share text',
        linkUrl: 'https://flutter.dev/',
        chooserTitle: 'Share with'
    );
  }
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelColor: primary,
            labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.black54,
            unselectedLabelStyle: TextStyle(fontSize: 17.sp),
            indicatorColor: primary,
            indicatorPadding: EdgeInsets.symmetric(vertical: height*0.01, horizontal: width*0.03),
            labelPadding: EdgeInsets.symmetric(horizontal:width*0.03),
            tabs: [
              Tab(
                text: "Overview",
              ),
              Tab(
                text: "Fundamentals",
              ),
              Tab(
                text: "Financials",
              ),
              Tab(
                text: "Analyst Call",
              ),
              Tab(
                text: "Research",
              ),
              Tab(
                text: "Chart",
              ),
              Tab(
                text: "Profile",
              ),
            ],
          ),
          titleSpacing: 0,
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: primary, //change your color here
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("HBL", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.sp),),
              Text("Habib Bank Limited", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
            ],
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.add, color: Colors.grey,size: 20.sp,),
                Text("Watchlist", style: TextStyle(color: Colors.grey, fontSize: 15.sp),),
                SizedBox(width: width*0.05,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: InkWell(onTap: (){share();},child: Icon(Icons.share, color: Colors.grey,size: 20.sp,)),
            )
          ],
        ),
        body: TabBarView(
          children: [
            VolumeLeadersOverview(),
            Text("b"),
            Text("c"),
            Text("d"),
            Text("e"),
            Text("f"),
            Text("g"),

          ],
        ),
      ),
    );
  }
}
