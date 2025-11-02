import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


final ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent/status bar is hidden.
      statusBarIconBrightness: Brightness.light, // For iOS: status bar text color
    ),
    backgroundColor: Colors.white,
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  timePickerTheme: TimePickerThemeData(
    backgroundColor: Colors.white,
    // helpTextStyle: style14grey.copyWith(
    //   color: AppColors.purpleColor,
    //   fontWeight: FontWeight.w600,
    //   fontSize: 18.r,
    // ),
    cancelButtonStyle: ButtonStyle(
      // textStyle: WidgetStatePropertyAll(
      //   // style14grey.copyWith(
      //   //   color: AppColors.purpleColor,
      //   //   fontWeight: FontWeight.w500,
      //   //   fontSize: 16.r,
      //   // ),
      // ),
    ),
    confirmButtonStyle: ButtonStyle(
      // textStyle: WidgetStatePropertyAll(
      //   // style14grey.copyWith(
      //   //   color: AppColors.purpleColor,
      //   //   fontWeight: FontWeight.w500,
      //   //   fontSize: 16.r,
      //   // ),
      // ),
    ),
    // dayPeriodTextStyle: style14grey.copyWith(
    //   color: AppColors.purpleColor,
    //   fontWeight: FontWeight.w500,
    //   fontSize: 16.r,
    // ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
  ),
  scaffoldBackgroundColor: Colors.white,
  // primaryColor: AppColors.purpleColor,
);

final ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    elevation: 0,
    scrolledUnderElevation: 0,
    color: Color(0xff222225),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey[600],
  ),
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.white,
);
