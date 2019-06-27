import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:facebook/pages/home.dart';
import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/notifications.dart';
import 'package:facebook/pages/menu.dart';
import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled=true;
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook',
      home: Facebook(),
    );
  }
}

class Facebook extends StatefulWidget {
  Facebook({Key key}) : super(key: key);

  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {

  List<Widget> pages = [
    HomePage(),
    FriendsPage(),
    MarketplacePage(),
    NotificationsPage(),
    MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: TabBarView(
          children: pages,
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: new TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.people_outline)
              ),
              Tab(
                icon: Icon(Icons.business)
              ),
              Tab(
                icon: Icon(Icons.notifications_none)
              ),
              Tab(
                icon: Icon(Icons.menu)
              ),
            ],
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.blue,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 45.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            ),
          )
        ),
      );
  }
}
