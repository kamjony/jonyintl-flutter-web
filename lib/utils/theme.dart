import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
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

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline3: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        headline4: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        headline5: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        bodyText2: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
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
