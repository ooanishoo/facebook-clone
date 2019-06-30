import 'package:flutter/material.dart';

class MenuTitle extends StatelessWidget {

  final String title;

  MenuTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
    ));
  }
}