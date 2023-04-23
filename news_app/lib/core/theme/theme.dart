import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xffFCFCFC),
    fontFamily: 'Montserrat',
    backgroundColor: const Color(0xffffffff),
    scaffoldBackgroundColor: const Color(0xffffffff),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w500,
        color: Color(0xff323232),
      ),
      headline2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Color(0xff323232),
      ),
      headline3: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
      ),
      headline4: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Color(0xffC6C6C6),
      ),
      headline5: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        color: Color(0xff9C9C9C),
      ),
      headline6: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: Color(0xff9C9C9C),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
        borderSide: const BorderSide(
          color: Color(0xFFF3F3F3),
        ),
      ),
    ),
  );
}
