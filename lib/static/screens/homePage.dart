import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:investors_lounge/static/commons/common.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'bottom_navbar/education/education.dart';
import 'bottom_navbar/league/league.dart';
import 'bottom_navbar/market.dart';
import 'bottom_navbar/news_feed.dart';
import 'bottom_navbar/watch_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  int _selectedIndex = 0;
  final screen = [NewsFeed(), WatchList(), Market(), Education(), League()];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      items: _navBarsItems(),
      screens: _buildScreens(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style6,
    );
  }
  List<Widget> _buildScreens() {
    return [
      NewsFeed(),
      WatchList(),
      Market(),
      Education(),
      League(),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.article),
        title: ("Newsfeed"),
        activeColorPrimary: primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wysiwyg_outlined),
        title: ("Watchlist"),
        activeColorPrimary: primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.leaderboard_outlined),
        title: ("Market"),
        activeColorPrimary: primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.menu_book),
        title: ("Education"),
        activeColorPrimary: primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.wine_bar),
        title: ("League"),
        activeColorPrimary: primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

}
