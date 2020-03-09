import 'package:facebook/models/global.dart';
import 'package:facebook/widgets/PageTitle.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key key}) : super(key: key);

  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  bool hasNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        preferredSize: Size.fromHeight(0),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              title: PageTitle(title: 'Notifications'),
              backgroundColor: Colors.white,
              centerTitle: false,
              actions: <Widget>[
                Container(
                  child: IconButton(
                    icon: Icon(Icons.settings),
                    color: Colors.black,
                    disabledColor: Colors.black,
                    splashColor: Theme.of(context).accentColor,
                    onPressed: () {},
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                ),
              ]),
          SliverList(
            delegate: SliverChildListDelegate(_getNotifications()),
          )
        ],
      ),
    );
  }

  List<Widget> _getNotifications() {
    List<Widget> notifications = [];
    notifications.add(_getNotification(
        'You have memories with Taliah Rossi and Mabel Quintero to look back on today.', '3 hours ago', false));
    notifications.add(_getNotification(
        'Susan Preece changed his profile picture.', 'Yesterday at 11:22pm', true));
    notifications.add(_getNotification(
        'David Beckham changed his profile picture.', 'Yesterday at 8:28pm', false));
    notifications.add(_getNotification(
        'Macaulay Dolan\'s birthday was yesterday.', '10 hours ago', true));
    notifications.add(_getNotification(
        'David Beckham changed his profile picture.', 'Yesterday at 8:28pm', false));
    notifications.add(_getNotification(
        'David Beckham changed his profile picture.', 'Yesterday at 8:28pm', false));
    notifications.add(_getNotification(
        'David Beckham changed his profile picture.', 'Yesterday at 8:28pm', false));
    notifications.add(_getNotification(
        'David Beckham changed his profile picture.', 'Yesterday at 8:28pm', false));
    notifications.add(_getNotification(
        'David Beckham changed his profile picture.', 'Yesterday at 8:28pm', false));
    return notifications;
  }

  Widget _getNotification(String notificaiton, String time, bool hasStory) {
    return Container(
      decoration: BoxDecoration(
        color: (hasStory == true) ? Theme.of(context).highlightColor : Colors.transparent
      ),
      child: ListTile(
        title: Text(
          notificaiton,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(userProfileImage),
          radius: 28.0,
        ),
        subtitle: Text(
          '\n' + time,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        isThreeLine: true,
        trailing: IconButton(
          icon: Icon(Icons.more_horiz),
          disabledColor: Colors.black,
        ),
        onTap: () {
          setState(() {
            hasStory = (hasStory == true) ? false : true;
          });
        },
      ),
    );
  }
}
