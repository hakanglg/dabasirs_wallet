import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/border/border_constants.dart';
import '../../constants/color/color_constants.dart';

ThemeData myTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ColorConstants.instance.blueExult,
    fontFamily: "Poppins",
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: const StadiumBorder(),
      backgroundColor: ColorConstants.instance.white,
    ),
    appBarTheme: const AppBarTheme(
        centerTitle: true, elevation: 0, backgroundColor: Colors.transparent),
    textTheme: TextTheme(
        headline5: TextStyle(
          color: ColorConstants.instance.white,
        ),
        headline6:
            TextStyle(color: ColorConstants.instance.white, fontSize: 16.sp),
        bodyText1:
            TextStyle(color: ColorConstants.instance.white, fontSize: 16.sp),
        bodyText2:
            TextStyle(color: ColorConstants.instance.white, fontSize: 16.sp),
        subtitle2: TextStyle(
            color: ColorConstants.instance.white,
            fontWeight: FontWeight.w300,
            fontSize: 12.sp)),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelAlignment: FloatingLabelAlignment.center,
        labelStyle: TextStyle(
            color: ColorConstants.instance.metroidRed, fontSize: 16.sp),
        focusColor: ColorConstants.instance.blueAngelsYellow,
        iconColor: ColorConstants.instance.blueExult,
        hintStyle: TextStyle(color: ColorConstants.instance.grey),
        fillColor: ColorConstants.instance.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderConstants.instance.radiusAllLow)),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: ColorConstants.instance.white,

    // ),
    iconTheme: IconThemeData(color: ColorConstants.instance.white),
    bottomAppBarTheme: BottomAppBarTheme(
      shape: const CircularNotchedRectangle(),
      color: ColorConstants.instance.shadyNeonBlue,
    ),
    tabBarTheme: TabBarTheme(
        // indicator: BoxDecoration(
        //   color: ColorConstants.instance.shadyNeonBlue,
        //   borderRadius: BorderRadius.circular(30),
        // ),
        mouseCursor: MaterialStateMouseCursor.clickable,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: ColorConstants.instance.white,
        unselectedLabelColor: ColorConstants.instance.lunarDust,
        // unselectedLabelStyle: bodyText1,
        indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
          color: Colors.transparent,
        ))));
