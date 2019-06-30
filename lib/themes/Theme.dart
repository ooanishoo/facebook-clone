import 'package:flutter/material.dart';

Object MyTheme() {
  return ThemeData(
    primaryColor: Color(0xff1777F0),
    textTheme: TextTheme(
      title: TextStyle(
        color: Color(0xff1D1E22),
        fontSize: 26,
        fontWeight: FontWeight.w600
      ),
      subhead: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
    fontFamily: 'Helvetica Neue',
    dividerColor: Color(0xffCCCFD5),
  );
}