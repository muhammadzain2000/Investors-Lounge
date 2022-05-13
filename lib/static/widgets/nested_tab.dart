import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:investors_lounge/static/screens/tabbar/news_feed/news/tribune/tribune_list.dart';
import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/news_feed/news/allnews/all_news_list.dart';
import 'package:investors_lounge/static/widgets/card_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
//import 'file:///E:/investors_lounge/app/il-appnew/App/investors_app/lib/static/screens/tabbar/all_news_list.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  bool selected = false;
  bool news = false;
  bool tribune = false;
  bool dawn = false;
  bool mettis = false;
  bool geo = false;
  bool recorder = false;

  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //HEIGHT-WIDTH
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          onTap: (int) {
            switch (_nestedTabController.index) {
              case 0:
                news_func();
                break;
              case 1:
                tribune_func();
                break;
              case 2:
                dawn_func();
                break;
              case 3:
                mettis_func();
                break;
              case 4:
                geo_func();
                break;
              case 5:
                recorder_func();
                break;

            }
          },
          //dragStartBehavior:DragStartBehavior.down ,
          controller: _nestedTabController,
          physics: NeverScrollableScrollPhysics(),
          indicatorColor: Colors.transparent,
          labelColor: primary,
          labelStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(horizontal: width*0.01),
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  news
                      ? Image.asset(
                    "images/news/news.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  )
                      : Image.asset(
                    "images/news/news_grey.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: width*0.01,),
                  Text("ALL NEWS", style: TextStyle(fontSize: 13.sp),),
                ],
              ),
             ),
            Tab(
              child:Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  tribune
                      ? Image.asset(
                    "images/news/Tribune.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  )
                      : Image.asset(
                    "images/news/Tribune_grey.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: width*0.01,),
                  Text("TRIBUNE", style: TextStyle(fontSize: 13.sp),),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  dawn
                      ? Image.asset(
                    "images/news/Dawn.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  )
                      : Image.asset(
                    "images/news/Dawn_grey.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: width*0.01,),
                  Text("DAWN", style: TextStyle(fontSize: 13.sp),)
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  mettis
                      ? Image.asset(
                    "images/news/mettis.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  )
                      : Image.asset(
                    "images/news/mettis_grey.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: width*0.01,),
                  Text("METTIS", style: TextStyle(fontSize: 13.sp),)
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  geo
                      ? Image.asset(
                    "images/news/geo.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  )
                      : Image.asset(
                    "images/news/geo_grey.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: width*0.01,),
                  Text("GEO", style: TextStyle(fontSize: 13.sp),),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  recorder
                      ? Image.asset(
                    "images/news/business.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  )
                      : Image.asset(
                    "images/news/business.png",
                    height: height*0.02,
                    width: width*0.04,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: width*0.01,),
                  Text("RECORDER", style: TextStyle(fontSize: 13.sp),),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _nestedTabController,
            children: <Widget>[
              ListItems(),
              TribuneListItems(),
              Text("c"),
              Text("d"),
              Text("e"),
              Text("f"),
            ],
          ),
        )
      ],
    );
  }

  // void checkboxCallBack() {
  //   setState(() {
  //     return selected = true;
  //   });
  // }
  void news_func() {
    setState(() {
       news = true;
       tribune = false;
       dawn = false;
       mettis = false;
       geo = false;
       recorder = false;

    });
  }
  void tribune_func() {
    setState(() {
       tribune = true;
       news = false;
       dawn = false;
       mettis = false;
       geo = false;
       recorder = false;


    });
  }
  void dawn_func() {
    setState(() {
       dawn = true;
       news = false;
       tribune = false;
       mettis = false;
       geo = false;
       recorder = false;

    });
  }
  void mettis_func() {
    setState(() {
       mettis = true;
       news = false;
       tribune = false;
       dawn = false;
       geo = false;
       recorder = false;
    });
  }
  void geo_func() {
    setState(() {
       geo = true;
       news = false;
       tribune = false;
       dawn = false;
       mettis = false;
       recorder = false;
    });
  }
  void recorder_func() {
    setState(() {
       recorder = true;
       news = false;
       tribune = false;
       dawn = false;
       mettis = false;
       geo = false;
    });
  }

}
