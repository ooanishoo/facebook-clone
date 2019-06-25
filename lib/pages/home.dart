import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'facebook',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 26, color: Colors.blue),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 1,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              _addPost(),
              Divider(
                height: 10,
              ),
              _getPost()
            ],
          ),
          decoration: BoxDecoration(color: Colors.grey),
        ));
  }
}

Widget _addPost() {
  return Container(
    child: Column(children: <Widget>[
      Container(
        child: Row(
          children: <Widget>[
            Container(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://scontent.fmel8-1.fna.fbcdn.net/v/t31.0-8/19250651_10155091495309823_804535298965649427_o.jpg?_nc_cat=105&_nc_ht=scontent.fmel8-1.fna&oh=1efc8b5c5f28b1960901b073ee533df0&oe=5DBA764B'),
                ),
                padding: EdgeInsets.only(right: 10)),
            Text(
              "What's on your Mind ?",
              style: TextStyle(color: Colors.black87),
            )
          ],
        ),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
      Divider(),
      Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                child: Row(children: <Widget>[
                  Icon(Icons.video_call, color: Colors.red),
                  Text('Live'),
                ], mainAxisAlignment: MainAxisAlignment.center),
                disabledColor: Colors.white,
              ),
              flex: 1,
            ),
            Expanded(
                child: RaisedButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.photo, color: Colors.green),
                      Text('Photo'),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  disabledColor: Colors.white,
                ),
                flex: 1),
            Expanded(
                child: RaisedButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.red),
                      Text('Check In'),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  disabledColor: Colors.white,
                ),
                flex: 1),
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        ),
      )
    ]),
    decoration: BoxDecoration(color: Colors.white),
  );
}

Widget _getPost() {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          child: Row(children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fmel7-1.fna.fbcdn.net/v/t1.0-9/42317197_2411799742179734_3459373858010693632_o.jpg?_nc_cat=102&_nc_ht=scontent.fmel7-1.fna&oh=f4a3b1437464b779ffbc032c51c50578&oe=5DBAC6F9'),
                    backgroundColor: Colors.grey,
                  ),
                  padding: EdgeInsets.only(right: 10),
                ),
                Column(
                  children: <Widget>[
                    Text('Aneesha Shrestha',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black)),
                    Row(
                      children: <Widget>[
                        Text(
                          '15 mins ',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Icon(Icons.language, size: 15, color: Colors.grey)
                      ],
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                )
                //Container(),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(Icons.star_border, color: Colors.grey),
                Icon(Icons.more_horiz, color: Colors.grey)
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          ),
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        ),
        // Container(
        //   child: Text(
        //       "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
        //   decoration: BoxDecoration(color: Colors.green),
        //   padding: EdgeInsets.only(top: 5, bottom: 5),
        //   //padding: EdgeInsets.fromLTRB(0, 5, 0, 5)
        // ),

        Container(
          constraints: BoxConstraints(
            maxHeight: 350
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              image: AssetImage('lib/assets/images/post1.jpeg'),
              fit: BoxFit.fill
            )
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: RawMaterialButton(
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 14,
                          ),
                          shape: new CircleBorder(
                              side: BorderSide(
                                  color: Colors.white, style: BorderStyle.solid)),
                          fillColor: Colors.blue,
                          onPressed: () {},
                          highlightElevation: 7,
                        ),
                        width: 30,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                      Container(
                        child: FloatingActionButton(
                          // child: IconButton(
                          //   icon: Icon(
                          //     Icons.favorite,
                          //     color: Colors.white,
                          //     size: 14,
                          //   ),
                          //   onPressed: (){},
                          //   highlightColor: Colors.transparent,
                          // ),

                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 14,
                          ),
                          shape: CircleBorder(
                            side: BorderSide(
                              color:Colors.white,
                            )
                          ),
                          backgroundColor: Colors.red,
                         disabledElevation: 0,
                        ),
                        width: 30,
                        color: Colors.white,
                      ),
                      Text('112', style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  height: 30,
                  decoration: BoxDecoration(color: Colors.white)),
              Container(
                  child: Row(
                children: <Widget>[
                  Text(
                    '13',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Comments',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ))
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
         // decoration: BoxDecoration(color: Colors.yellow),
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

        ),
        Divider(),
        Container(
          child: Text('footer'),
        ),
      ],
    ),
    decoration: BoxDecoration(color: Colors.white),
  );
}
