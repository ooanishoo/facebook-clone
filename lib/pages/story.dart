import 'package:facebook/models/global.dart';
import 'package:facebook/widgets/userAvatar.dart';
import 'package:flutter/material.dart';

void main() => runApp(Story());

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              _storyHeader(),
              _storyBody(),
              _storyFooter(),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blueGrey[300],
                Colors.blueGrey[100],
                Colors.blueGrey[300],
              ],
              stops: [0.1, 0.5, 0.9],
            ),
          ),
        ),
      ),
    );
  }

  Widget _storyHeader() {
    return Expanded(
      child: Container(
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(userProfileImage),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Anna Dangol',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '16 hrs',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.cancel),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(color: Colors.transparent),
        height: 60,
        margin: EdgeInsets.only(top: 30),
      ),
    );
  }

  Widget _storyBody() {
    return Container(
      child: FittedBox(
        child: Text('Image here'),
        fit: BoxFit.fitWidth,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      height: 600,
    );
  }

  Widget _storyFooter() {
    return Container(
      child: ListView(
        children: <Widget>[
          Text('Reply...'),
          Container(
            child: RawMaterialButton(
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 14,
              ),
              shape:
                  new CircleBorder(side: BorderSide(style: BorderStyle.none)),
              fillColor: Colors.blue,
              onPressed: () {},
              highlightElevation: 0,
            ),
            width: 30,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            child: RawMaterialButton(
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 14,
              ),
              shape:
                  new CircleBorder(side: BorderSide(style: BorderStyle.none)),
              fillColor: Colors.red,
              onPressed: () {},
              highlightElevation: 0,
            ),
            width: 30,
            decoration: BoxDecoration(color: Colors.white),
          ),
          Container(
            width: 20.0,
            height: 20.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: new AssetImage('lib/assets/images/anish.jpg'))),
          ),
          // Material(
          //   elevation: 4.0,
          //   shape: CircleBorder(),
          //   // child: CircleAvatar(
          //   //   backgroundImage: AssetImage('lib/assets/images/anish.jpg'),
          //   // )
          //   child: Ink.image(
          //     image: AssetImage('lib/assets/images/anish.jpg'),
          //     // image: NetworkImage(userProfileImage),
          //     fit: BoxFit.cover,
          //     width: 120.0,
          //     height: 120.0,
          //     child: InkWell(
          //       // onTap: onTap: () {},
          //       child: null,
          //     ),
          //   ),
          // ),
          Container(
            constraints: BoxConstraints(maxHeight: 40,maxWidth: 40),
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/post1.jpeg'),
                  //image: AssetImage('lib/assets/icon/reactions/like.svg'),
                  fit: BoxFit.fill
                ),
                shape: BoxShape.circle
            ),
          )
          // Container(
          //   child: ConstrainedBox(
          //     constraints: BoxConstraints.expand(),
          //     child: Ink.image(
          //       image: AssetImage('lib/assets/icon/reactions/laugh.svg'),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // )
        ],
        scrollDirection: Axis.horizontal,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 30),
      height: 60,
    );
  }
}
