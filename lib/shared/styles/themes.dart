import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dolfin_flutter/shared/styles/colours.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "Montserrat",
    // Increase button text size
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 16.sp,
        color: Colors.grey,
      ),
      labelStyle: TextStyle(
        fontSize: 16.sp,
        color: AppColours.black,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.black,
        letterSpacing: 2,
      ),
      titleMedium: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.black,
        letterSpacing: 2,
      ),
      titleSmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.black,
      ),
      displayMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.dark_blue,
      ),
      // Add specific style for button text
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColours.light_blue,
      secondary: AppColours.dark_blue,
      surface: AppColours.white,
      background: AppColours.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColours.black,
      onBackground: AppColours.black,
      onError: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Montserrat",
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 16.sp,
        color: Colors.grey,
      ),
      labelStyle: TextStyle(
        fontSize: 16.sp,
        color: AppColours.white,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.white,
        letterSpacing: 2,
      ),
      titleMedium: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.white,
        letterSpacing: 2,
      ),
      titleSmall: TextStyle(
        fontSize: 8.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.white,
      ),
      displayMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.light_blue,
      ),
      labelLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.dark,
    ).copyWith(
      primary: AppColours.light_blue,
      secondary: AppColours.dark_blue,
      surface: AppColours.black,
      background: AppColours.black,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: AppColours.white,
      onBackground: AppColours.white,
      onError: Colors.white,
    ),
  );
}