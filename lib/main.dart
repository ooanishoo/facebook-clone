import 'package:flutter/cupertino.dart';
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

  int counter = 0;

  void changeCounter(){
    setState(() {
      counter++;
    });
    print("increment counter $counter");
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
    double width = MediaQuery.of(context).size.width;
    double tabWidth = width / 5;
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
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.people_outline)),
              Tab(icon: Icon(Icons.business_center)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.menu)),
             // Tab(icon: Icon(Icons.people_outline)),
              // Tab(child: Stack(
              //   children: <Widget>[
              //     new IconButton(icon: Icon(Icons.business_center),  onPressed: (){
              //       setState((){
              //         counter = 0;
              //       });
              //     } ),
              //     counter !=0 ?
              //     Positioned(
              //       right: 11,
              //       top: 11,
              //       child: new Container(
              //         padding: EdgeInsets.all(2),
              //         decoration: new BoxDecoration(
              //           color: Colors.red,
              //           borderRadius: BorderRadius.circular(6),
              //         ),
              //         constraints: BoxConstraints(
              //           minWidth: 14,
              //           minHeight: 14,
              //         ),
              //         child: Text(
              //           '20',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 8,
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //       ),
              //     ) : new Container()
              //   ]),),
              //  Stack(
              //   children: <Widget>[
              //     new IconButton(icon: Icon(Icons.notifications),onPressed: changeCounter),
              //     Positioned(
              //       right: 11,
              //       top: 11,
              //       child: new Container(
              //         padding: EdgeInsets.all(2),
              //         decoration: new BoxDecoration(
              //           color: Colors.red,
              //           borderRadius: BorderRadius.circular(6),
              //         ),
              //         constraints: BoxConstraints(
              //           minWidth: 14,
              //           minHeight: 14,
              //         ),
              //         child: Text(
              //           '$counter',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 8,
              //           ),
              //           textAlign: TextAlign.center,
              //         ),
              //       ),
              //     ),
              //   ]),
              // // Tab(
              // //   icon: Stack(
              // //     children: <Widget>[

              // //       IconButton(icon: Icon(Icons.notifications), onPressed: () {
              // //         setState(() {
              // //           counter = 0;
              // //         });
              // //       }),
              // //       Icon(Icons.notifications_none),
              // //       Positioned(
              // //         child: Container(
              // //           child: Text(
              // //             '27',
              // //             style: TextStyle(
              // //               color: Colors.white,
              // //               fontSize: 12,
              // //             ),
              // //             textAlign: TextAlign.center,
              // //           ),
              // //           decoration: BoxDecoration(
              // //             color: Colors.red,
              // //             shape: BoxShape.circle,
              // //           ),
              // //           height: 15,
              // //           width: 15,
              // //           padding: EdgeInsets.all(2),
              // //         ),
              // //         top: 0.0,
              // //         right: 0.0,
              // //       )
              // //     ],
              // //   ),
              // // ),
              // Tab(icon: Icon(Icons.menu)),
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
