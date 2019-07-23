import 'package:flutter/material.dart';

Object MyTheme() {
  return ThemeData(
    primaryColor: Color(0xff1777F0),
    //primaryColor: Colors.yellow,
    primaryColorDark: Color(0xff023D87),
    primaryColorLight: Color(0xffE6F1FF),
    backgroundColor: Color(0xffCCCFD5),
    scaffoldBackgroundColor: Colors.white,
    accentColor: Color(0xffEFF5F5),
    highlightColor: Color(0xffE7F0FE),
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