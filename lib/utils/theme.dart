import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: const TextTheme(
        // headline1: TextStyle(color: Colors.white),
        // headline2: TextStyle(color: Colors.white),
        // headline3: TextStyle(color: Colors.white),
        headline4: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        // headline5: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        // headline6: TextStyle(color: Colors.white),
        // bodyText1: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        // bodyText2: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      ),
      primarySwatch: const MaterialColor(
        0xFFFFFFFF,
        <int, Color>{
          50: Color(0x1AFFFFFF),
          100: Color(0x33FFFFFF),
          200: Color(0x4DFFFFFF), //this is scaffold's bg color
          300: Color(0x66FFFFFF),
          400: Color(0x80FFFFFF),
          500: Color(0xFFFFFFFF),
          600: Color(0x99FFFFFF),
          700: Color(0xB3FFFFFF),
          800: Color(0xCCFFFFFF),
          900: Color(0xE6FFFFFF),
        },
      ));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline3: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        headline4: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        headline5: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        bodyText2: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
      primarySwatch: const MaterialColor(
        0xFF000000,
        <int, Color>{
          50: Color(0x1A000000),
          100: Color(0x33000000),
          200: Color(0x4D000000), //this is scaffold's bg color
          300: Color(0x66000000),
          400: Color(0x80000000),
          500: Color(0xFF000000),
          600: Color(0x99000000),
          700: Color(0xB3000000),
          800: Color(0xCC000000),
          900: Color(0xE6000000),
        },
      ));
}
