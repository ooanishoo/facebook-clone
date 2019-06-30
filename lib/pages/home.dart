import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:facebook/models/global.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLiked = false;
  void reactToPost() {
    setState(() {
      if (isLiked) {
        isLiked = false;
      } else {
        isLiked = true;
      }
    });
    print("Liked Post ? : $isLiked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Colors.white, elevation: 0),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'facebook',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                  color: Colors.blue),
            ),
            backgroundColor: Colors.white,
            floating: true,
            snap: true,
            actions: _getAppBarActions(),
          ),
          SliverList(
              delegate: new SliverChildListDelegate([
            _addPost(),
            _getSeparator(),
            _getStoryContainer(),
            Column(children: _getPosts())
          ]))
        ],
      ),
    );
  }

  List<Widget> _getAppBarActions() {
    return [
      FloatingActionButton(
        backgroundColor: Color(0xffEFF5F5),
        child: Icon(
          Icons.search,
          color: Colors.black,
        ),
        onPressed: () {},
        elevation: 0.0,
        highlightElevation: 0.0,
      ),
      Padding(
        padding: EdgeInsets.only(right: 5),
      ),
      FloatingActionButton(
        backgroundColor: Color(0xffEFF5F5),
        child: Icon(
          Icons.chat,
          color: Colors.black,
        ),
        onPressed: () {},
        elevation: 0.0,
        highlightElevation: 0.0,
      ),
    ];
  }

  Widget _getSeparator() {
    return Container(
      decoration: BoxDecoration(color: Color(0xffCCCFD5)),
      constraints: BoxConstraints(maxHeight: 10),
    );
  }

  Widget _getStoryContainer() {
    List<int> stories = [];
    stories.length = 10;

    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            margin: EdgeInsets.only(right: 10),
            width: 2,
          ),
          _getYourStory(),
          Row(
            children: _getStories(),
            mainAxisSize: MainAxisSize.max,
          )
        ],
        scrollDirection: Axis.horizontal,
      ),
      decoration: BoxDecoration(color: Colors.white),
      height: 220,
      padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
    );
  }

  Widget _getStory() {
    return Container(

      child: Stack(
        children: <Widget>[
          ClipRRect(
            child: Image.network(userStoryCoverImage, fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          Positioned(
            child: CircleAvatar(
              backgroundImage: new NetworkImage(userProfileImage),
            ),
            height:40,
            width: 40,
            left: 10,
            top: 5
          ),
          Positioned(
            child: Text(
              'Hester \nVentura',
              style:TextStyle(color: Colors.white)
            ),
            top:140,
            left: 10
          )
        ],
        fit: StackFit.expand,
      ),
      margin: EdgeInsets.only(right: 10),
      width: 120,
      height: 220,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
    );
  }

  Widget _getYourStory() {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipRRect(
            child: Image.network(myStoryImage, fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          Positioned(
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(Icons.add, color:Colors.blue,size: 30,),
              onPressed: () {}
            ),
            left: 10,
            top: 5,
            height:40,
            width:40
          ),
          Positioned(
            child: Text(
              'Add to Story',
              style:TextStyle(color: Colors.white)
            ),
            top:150,
            left: 10
          )

        ],
        fit: StackFit.expand,
      ),
      margin: EdgeInsets.only(right: 10),
      height: 220,
      width: 120,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
    );
  }

  List<Widget> _getStories() {
    List<Widget> stories = [];
    for (var i = 0; i < 8; i++) {
      stories.add(_getStory());
    }
    return stories;
  }

  Widget _addPostHeader() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
              child: CircleAvatar(
                backgroundImage: new NetworkImage(userProfileImage),
              ),
              padding: EdgeInsets.only(right: 10)),
          Text(
            "What's on your Mind ?",
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    );
  }

  Widget _addPostOptions() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton.icon(
                  icon: Icon(Icons.video_call, color: Colors.red),
                  label: Text('Live'),
                  textColor: Colors.grey,
                  onPressed: () {}),
              flex: 1),
          Expanded(
              child: FlatButton.icon(
                  icon: Icon(Icons.photo, color: Colors.green),
                  label: Text('Photo'),
                  textColor: Colors.grey,
                  onPressed: () {}),
              flex: 1),
          Expanded(
            child: FlatButton.icon(
                icon: Icon(Icons.location_on, color: Colors.pink),
                label: Text('Check In'),
                textColor: Colors.grey,
                onPressed: () {}),
            flex: 1,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }

  Widget _addPost() {
    return Container(
      child: Column(children: <Widget>[
        _addPostHeader(),
        Divider(),
        _addPostOptions(),
      ]),
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  Widget _postHeader() {
    return Container(
      child: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundImage: new NetworkImage(userProfileImage),
                  backgroundColor: Colors.grey,
                ),
                padding: EdgeInsets.only(right: 10),
              ),
              Column(
                children: <Widget>[
                  Text('Kairon Couch',
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
    );
    // Container(
    //   child: Text(
    //       "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
    //   decoration: BoxDecoration(color: Colors.green),
    //   padding: EdgeInsets.only(top: 5, bottom: 5),
    //   //padding: EdgeInsets.fromLTRB(0, 5, 0, 5)
    // ),
  }

  Widget _postBody() {
    return Container(
      constraints: BoxConstraints(maxHeight: 350),
      decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
              image: AssetImage('lib/assets/images/post1.jpeg'),
              fit: BoxFit.fill)),
    );
  }

  Widget postLikesAndComments() {
    return Container(
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
                        shape: CircleBorder(
                            side: BorderSide(
                          color: Colors.white,
                        )),
                        fillColor: Colors.red,
                        onPressed: () {}),
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
      //  decoration: BoxDecoration(color: Colors.yellow),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    );
  }

  Widget postOptions() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton.icon(
                icon: Icon(Icons.thumb_up),
                label: Text('Like'),
                textColor: isLiked == true ? Colors.blue: Colors.grey,
                onPressed: reactToPost
              ),
              flex: 1),
          Expanded(
              child: FlatButton.icon(
                  icon: Icon(Icons.comment),
                  label: Text('Comment'),
                  textColor: Colors.grey,
                  onPressed: () {}),
              flex: 1),
          Expanded(
              child: FlatButton.icon(
                  icon: Icon(Icons.share),
                  label: Text('Share'),
                  textColor: Colors.grey,
                  onPressed: () {}),
              flex: 1),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.all(0),
    );
  }

  Widget _getPost() {
    return Container(
      child: Column(
        children: <Widget>[
          _getSeparator(),
          _postHeader(),
          _postBody(),
          postLikesAndComments(),
          Divider(height: 1),
          postOptions()
        ],
      ),
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  List<Widget> _getPosts() {
    List<Widget> _posts = [];
    for (var i = 0; i < 5; i++) {
      _posts.add(_getPost());
    }
    return _posts;
  }

}