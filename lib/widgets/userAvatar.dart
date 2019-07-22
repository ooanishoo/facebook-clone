import 'package:facebook/pages/notifications.dart';
import 'package:facebook/pages/test.dart';
import 'package:flutter/material.dart';
import 'package:facebook/models/global.dart';
import 'package:path/path.dart';

class UserAvatar extends StatelessWidget {
  bool hasStory;

  //final VoidCallback onColorSelect;

  UserAvatar({this.hasStory});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            child: CircleAvatar(
              backgroundColor: hasStory == true
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
            width: 48,
            height: 48),
        Container(
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
            width: 45,
            height: 45),
        Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(userProfileImage),
            ),
            width: 40,
            height: 40),
        FloatingActionButton(
          backgroundColor: Colors.transparent,
          highlightElevation: 0,
          elevation: 0,
          onPressed: (){},
        )
      ],
      alignment: Alignment(0,0),
    );
  }





}
