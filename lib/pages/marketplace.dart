import 'package:facebook/widgets/PageTitle.dart';
import 'package:facebook/widgets/menuTitle.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'home.dart';

class MarketplacePage extends StatefulWidget {
  MarketplacePage({Key key}) : super(key: key);

  _MarketplacePageState createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  @override
  Widget build(BuildContext context) {

        return MaterialApp(
          title: 'Material App',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Material App Bar'),
            ),
            body: StreamBuilder<QuerySnapshot>(
                stream: Firestore.instance.collection('bandnames').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(child:Text('Loading...'),);

                  return ListView.builder(
                    itemExtent: 80.0,
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildListItem(context, snapshot.data.documents[index]);
                    }
                  );
                },
              ),
          ),
        );
    }

  Widget _buildListItem(BuildContext context, DocumentSnapshot document){
    String bandName = document['name'];
    return ListTile(
      title: MenuTitle(title: bandName),
      subtitle: Text(document['votes'].toString()),
      isThreeLine: true,
      leading: Icon(
        Icons.event_note,
        size: 35,
        color: Colors.blueGrey[300],
      ),
      onTap: () {
        // Firestore.instance.runTransaction((transaction) async {
        //   DocumentSnapshot freshSnap = await transaction.get(document.reference);
        //   await transaction.update(freshSnap.reference, {
        //     'votes' : freshSnap['votes'] + 1,
        //   });
        // });
        document.reference.updateData({
          'votes':document['votes'] + 1
        });
      },
    );
  }
}
