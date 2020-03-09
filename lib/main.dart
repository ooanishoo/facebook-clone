import 'dart:async';
import 'package:facebook/pages/splash.dart';
import 'package:facebook/themes/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook/pages/home.dart';
import 'package:facebook/pages/friends.dart';
import 'package:facebook/pages/marketplace.dart';
import 'package:facebook/pages/notifications.dart';
import 'package:facebook/pages/menu.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook',
      home: Facebook(),
      theme: MyTheme(),
    );
  }
}

class Facebook extends StatefulWidget {
  Facebook({Key key}) : super(key: key);

  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  int counter = 0;
  bool isLoading = true;

  void changeCounter() {
    setState(() {
      counter++;
    });
    print("increment counter $counter");
  }

  @override
  void initState() {
    super.initState();
  }

  List<Widget> pages = [
    HomePage(),
    FriendsPage(),
    MarketplacePage(),
    NotificationsPage(),
    MenuPage(),
  ];
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      Timer(Duration(seconds: 5), () {
        print("Facebook has been loaded...");
        setState(() => this.isLoading = false);
      });
      return SplashPage();
    }
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
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.people_outline)),
              Tab(icon: Icon(Icons.business_center)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.menu)),
            ],
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: UnderlineTabIndicator(
              insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 47.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            labelPadding: EdgeInsets.only(right: 0.0, left: 0.0),
          ),
        ),
      ),
    );
  }
}
