import 'package:facebook/models/global.dart';
import 'package:facebook/pages/user_story.dart';
import 'package:facebook/widgets/menuTitle.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_controller.dart';
import '../widgets/PageTitle.dart';

class MenuPage extends StatefulWidget {
  MenuPage({this.storyController});

  final StoryController storyController;

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: PageTitle(title: 'Menu'),
            backgroundColor: Colors.white,
            centerTitle: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: MenuTitle(title: firstName + ' ' + lastName),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(userProfileImage),
                ),
                subtitle: Text('View your profile'),
                onTap: () {
                },
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Events'),
                leading: Icon(
                  Icons.event_note,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => UserStory(storyController: widget.storyController)
                  ));
                },
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Pages'),
                leading: Icon(
                  Icons.outlined_flag,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Friends'),
                leading: Icon(
                  Icons.people_outline,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Groups'),
                leading: Icon(
                  Icons.group_work,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Marketplace'),
                leading: Icon(
                  Icons.business_center,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
                subtitle: Text('1 new'),
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Memories'),
                leading: Icon(
                  Icons.outlined_flag,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Saved'),
                leading: Icon(
                  Icons.bookmark_border,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
                subtitle: Text('32 new'),
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Gaming'),
                leading: Icon(
                  Icons.games,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
                subtitle: Text('4 new'),
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Jobs'),
                leading: Icon(
                  Icons.work,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Local'),
                leading: Icon(
                  Icons.location_on,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Nearby Friends'),
                leading: Icon(
                  Icons.perm_identity,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Discover people'),
                leading: Icon(
                  Icons.perm_contact_calendar,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'See more'),
                leading: Icon(
                  Icons.more,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Help & Support'),
                leading: Icon(
                  Icons.help_outline,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Settings & Privacy'),
                leading: Icon(
                  Icons.settings,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                title: MenuTitle(title: 'Log Out'),
                leading: Icon(
                  Icons.power_settings_new,
                  size: 35,
                  color: Colors.blueGrey[300],
                ),
                onTap: () {},
              ),
              Divider(),
            ]),
          )
        ],
      ),
    );
  }
}
