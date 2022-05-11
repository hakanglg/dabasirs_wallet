import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/border/border_constants.dart';
import '../../constants/color/color_constants.dart';

ThemeData myTheme = ThemeData(
    scaffoldBackgroundColor: ColorConstants.instance.blueExult,
    fontFamily: "Poppins",
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0, backgroundColor: Colors.transparent),
    textTheme: TextTheme(
        headline5: TextStyle(
          color: ColorConstants.instance.white,
        ),
        bodyText1: TextStyle(color: ColorConstants.instance.white, fontSize: 16.sp),
        bodyText2: TextStyle(color: ColorConstants.instance.white, fontSize: 16.sp),
        subtitle2: TextStyle(color: ColorConstants.instance.white, fontWeight: FontWeight.w300, fontSize: 12.sp)),
    inputDecorationTheme: InputDecorationTheme(
        focusColor: ColorConstants.instance.blueAngelsYellow,
        iconColor: ColorConstants.instance.blueExult,
        hintStyle: TextStyle(color: ColorConstants.instance.grey),
        fillColor: ColorConstants.instance.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderConstants.instance.radiusAllHigh)),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: ColorConstants.instance.white,

    // ),

    bottomAppBarTheme: BottomAppBarTheme(
      shape: const CircularNotchedRectangle(),
      color: ColorConstants.instance.shadyNeonBlue,
    ),
    tabBarTheme: TabBarTheme(
        labelColor: ColorConstants.instance.white,
        unselectedLabelColor: ColorConstants.instance.lunarDust,
        // unselectedLabelStyle: bodyText1,
        indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
          color: Colors.transparent,
        ))));
