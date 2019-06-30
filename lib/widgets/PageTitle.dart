import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  final String title;
  PageTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 26,
      ),
    );
  }
}