import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dolfin_flutter/shared/styles/colours.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "Montserrat",
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
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.black,
        letterSpacing: 2,
      ),
      titleMedium: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.black,
        letterSpacing: 2,
      ),
      titleSmall: TextStyle(
        fontSize: 8.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.black,
      ),
      displayMedium: TextStyle(
        fontSize: 9.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.dark_blue,
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
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.white,
        letterSpacing: 2,
      ),
      titleMedium: TextStyle(
        fontSize: 12.sp,
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
        fontSize: 9.sp,
        fontWeight: FontWeight.bold,
        color: AppColours.light_blue,
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

// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:dolfin_flutter/shared/styles/colours.dart';
//
// class MyTheme {
//   static ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     fontFamily: "Montserrat",
//     textTheme: TextTheme(
//       // For large headers like "Welcome"
//       displayLarge: TextStyle(
//         fontSize: 32.sp,
//         fontWeight: FontWeight.bold,
//         color: AppColours.black,
//       ),
//       // For subheaders like "Please Sign In To Continue"
//       displayMedium: TextStyle(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w500,
//         color: Colors.grey,
//       ),
//       // For input labels and regular text
//       bodyLarge: TextStyle(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.normal,
//         color: AppColours.black,
//       ),
//       // For smaller text like "Forgot password?"
//       bodyMedium: TextStyle(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.normal,
//         color: AppColours.black,
//       ),
//       // For buttons
//       labelLarge: TextStyle(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w500,
//         color: Colors.white,
//       ),
//     ),
//     colorScheme: ColorScheme.fromSwatch(
//       brightness: Brightness.light,
//     ).copyWith(
//       primary: AppColours.light_blue,
//       secondary: AppColours.dark_blue,
//       surface: AppColours.white,
//       background: AppColours.white,
//       error: Colors.red,
//       onPrimary: Colors.white,
//       onSecondary: Colors.white,
//       onSurface: AppColours.black,
//       onBackground: AppColours.black,
//       onError: Colors.white,
//     ),
//   );
//
//   static ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     fontFamily: "Montserrat",
//     textTheme: TextTheme(
//       displayLarge: TextStyle(
//         fontSize: 32.sp,
//         fontWeight: FontWeight.bold,
//         color: AppColours.white,
//       ),
//       displayMedium: TextStyle(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w500,
//         color: AppColours.white,
//       ),
//       bodyLarge: TextStyle(
//         fontSize: 14.sp,
//         fontWeight: FontWeight.normal,
//         color: AppColours.white,
//       ),
//       bodyMedium: TextStyle(
//         fontSize: 12.sp,
//         fontWeight: FontWeight.normal,
//         color: AppColours.white,
//       ),
//       labelLarge: TextStyle(
//         fontSize: 16.sp,
//         fontWeight: FontWeight.w500,
//         color: Colors.white,
//       ),
//     ),
//     colorScheme: ColorScheme.fromSwatch(
//       brightness: Brightness.dark,
//     ).copyWith(
//       primary: AppColours.light_blue,
//       secondary: AppColours.dark_blue,
//       surface: AppColours.black,
//       background: AppColours.black,
//       error: Colors.red,
//       onPrimary: Colors.white,
//       onSecondary: Colors.white,
//       onSurface: AppColours.white,
//       onBackground: AppColours.white,
//       onError: Colors.white,
//     ),
//   );
// }