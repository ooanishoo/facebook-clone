import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  final String title;
  PageTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.title,
    );
  }
}