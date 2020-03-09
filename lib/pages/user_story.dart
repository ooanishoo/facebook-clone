import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class UserStory extends StatefulWidget {
  UserStory({this.storyController});

  final StoryController storyController;

  @override
  _UserStoryState createState() => _UserStoryState();
}

class _UserStoryState extends State<UserStory> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Dismissible(
        direction: DismissDirection.vertical,
        key: Key('key'),
        onDismissed: (direction) {
          Navigator.of(context).pop();
        },
        child: _getStories()
      ),
    );
  }

  Widget _getStories() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      //height:200,
      child: Stack(children: <Widget>[
        Container(
          child: _storyContent(),
        ),
        Positioned(
          top: 30,
          child: _storyHeader(),
        ),
      ]),
    );
  }

  Widget _storyHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(15, 10, 10, 15),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      height: 60,
      //width:400,
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/f6/eb/53/f6eb535411056b553dfdec1665387c0c.jpg"),
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
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.end,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }

  Widget _storyContent() {
    //return Center(child: Text('Story here'));
    return StoryView(
      [
        //The StoryItem.text accepts a text, you can add any text you want
        StoryItem.text(
          "Good morning, party people.",
          Colors.blue,
          fontSize: 35,
        ),

        //The StoryItem.pageImage accepts an image, you can add any image you want
        //In this tutorial, Cached Network Image Provider was used so as to load the image and also cache images
        //StoryItem.pageImage accepts a caption
        //The caption describes the image
        StoryItem.pageImage(
          CachedNetworkImageProvider(
              "https://i.pinimg.com/originals/f6/eb/53/f6eb535411056b553dfdec1665387c0c.jpg"),
          caption: "Simply beautiful😘😘😘",
        ),
        StoryItem.pageImage(
          CachedNetworkImageProvider(
              "https://i.pinimg.com/originals/f6/eb/53/f6eb535411056b553dfdec1665387c0c.jpg"),
          caption: "Simply beautiful😘😘😘",
        ),
        StoryItem.pageImage(
          CachedNetworkImageProvider(
              "http://s3.weddbook.com/t4/2/5/0/2501568/vanila-wedding-boutique-dubai-on-instagram-have-a-lovely-weekend-everyone-let-it-be-sunny-throughout-the-upcoming-days-to-enjoy-the-beach-and-the-sea-our-lovely-vanila-bride.jpg"),
          caption: "Vanila Wedding Boutique Dubai",
        ),
        StoryItem.pageImage(
          CachedNetworkImageProvider(
              "https://i0.pickpik.com/photos/836/957/310/adventure-jump-hipster-ext-preview.jpg"),
          caption: "Jumping beside cliff during daytime",
        ),

        //The StoryItem.pageGif accepts a GIf, you can add any Gif you want
        //It accepts a caption. The caption describes the Gif
        StoryItem.pageGif(
          "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
          caption: "Thanks for watching",
          controller: widget.storyController,
        ),
      ],
      onStoryShow: (s) {
        print("Showing a story");
      },
      onComplete: () {
        print("Completed a cycle");
      },

      //You can place your progress position top or bottom
      progressPosition: ProgressPosition.top,
      repeat: true,
      controller: widget.storyController,
    );
  }
}
