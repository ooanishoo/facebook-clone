import 'package:facebook/widgets/PageTitle.dart';
import 'package:flutter/material.dart';

void main() => runApp(MarketplacePage());

class MarketplacePage extends StatefulWidget {
  @override
  _MarketplacePageState createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
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
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            title: PageTitle(title: 'Marketplace'),
            backgroundColor: Colors.white,
            centerTitle: false,
          ),
          SliverList(delegate: SliverChildListDelegate([]))
        ]));
  }
}
