import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(onTap: (){Navigator.pop(context);}
            ,child: Icon(Icons.arrow_back_ios_rounded)),
        elevation: 0.0,
        titleSpacing: -10,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.notifications,
              color: primary,
            ),
            SizedBox(
              width: width * 0.015,
            ),
            Text(
              "Notifications",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19.sp),
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: primary, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: width*0.03),
              child: Text(
                "New",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
              ),
            ),
            Slidable(
              key: const ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),

                ],
              ),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "images/list_images/akd.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Text(
                        "Research",
                        style: TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding:  EdgeInsets.only(bottom: height*0.01),
                  child: Text(
                    "Pakistan Banks: Fresh Banking spreads improved in Jul'21- By AKD Securities",style: TextStyle(fontSize: 16.5.sp),
                    maxLines: 2,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Colors.grey,fontSize: 15.3.sp),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Slidable(
              key: const ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),

                ],
              ),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "images/list_images/akd.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Text(
                        "Research",
                        style: TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding:  EdgeInsets.only(bottom: height*0.01),
                  child: Text(
                    "Pakistan Banks: Fresh Banking spreads improved in Jul'21- By AKD Securities",style: TextStyle(fontSize: 16.5.sp),
                    maxLines: 2,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Colors.grey,fontSize: 15.3.sp),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Padding(
              padding:  EdgeInsets.only(left: width*0.03),
              child: Text(
                "Earlier",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
              ),
            ),
            Slidable(
              key: const ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),

                ],
              ),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "images/list_images/akd.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Text(
                        "Research",
                        style: TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding:  EdgeInsets.only(bottom: height*0.01),
                  child: Text(
                    "Pakistan Banks: Fresh Banking spreads improved in Jul'21- By AKD Securities",style: TextStyle(fontSize: 16.5.sp),
                    maxLines: 2,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Colors.grey,fontSize: 15.3.sp),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Slidable(
              key: const ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),

                ],
              ),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "images/list_images/akd.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Text(
                        "Research",
                        style: TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding:  EdgeInsets.only(bottom: height*0.01),
                  child: Text(
                    "Pakistan Banks: Fresh Banking spreads improved in Jul'21- By AKD Securities",style: TextStyle(fontSize: 16.5.sp),
                    maxLines: 2,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Colors.grey,fontSize: 15.3.sp),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Slidable(
              key: const ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),

                ],
              ),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "images/list_images/akd.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Text(
                        "Research",
                        style: TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding:  EdgeInsets.only(bottom: height*0.01),
                  child: Text(
                    "Pakistan Banks: Fresh Banking spreads improved in Jul'21- By AKD Securities",style: TextStyle(fontSize: 16.5.sp),
                    maxLines: 2,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Colors.grey,fontSize: 15.3.sp),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Slidable(
              key: const ValueKey(0),
              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),

                ],
              ),
              child: ListTile(
                leading: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "images/list_images/akd.png",
                      height: height * 0.1,
                      width: width * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: Text(
                        "Research",
                        style: TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
                title: Padding(
                  padding:  EdgeInsets.only(bottom: height*0.01),
                  child: Text(
                    "Pakistan Banks: Fresh Banking spreads improved in Jul'21- By AKD Securities",style: TextStyle(fontSize: 16.5.sp),
                    maxLines: 2,
                  ),
                ),
                subtitle: Text(
                  "2 hours ago",
                  style: TextStyle(color: Colors.grey,fontSize: 15.3.sp),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
          ],
        ),
      ),
    );
  }
}
