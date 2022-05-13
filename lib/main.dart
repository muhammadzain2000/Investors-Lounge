import 'package:flutter/material.dart';
import 'package:investors_lounge/static/screens/starting_screens/intro_slider/slider.dart';
import 'package:investors_lounge/static/screens/tabbar/league/education_league_view/league_info/transactions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:investors_lounge/static/screens/starting_screens/login.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.white,
    theme: ThemeData(
      fontFamily: 'Roboto',
    ),
    debugShowCheckedModeBanner: false,
    home:ResponsiveSizer(
      builder: (context, orientation, screenType) {
         return SliderScreen();

      },
    ),
  ));
}

