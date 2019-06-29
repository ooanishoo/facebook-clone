import 'package:facebook/pages/home.dart';
import 'package:flutter/material.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0), // here the desired height
          child: AppBar(
            backgroundColor: Colors.red,
            elevation:0,

          ),
        ),
        body: new CustomScrollView(slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 56,
            floating: true,
            pinned: false,
            snap: true,
            centerTitle: false,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              title: Text('facebook'),
              //collapseMode: CollapseMode.parallax,
            ),
           actions: <Widget>[
            FloatingActionButton(
              backgroundColor: Color(0xffEFF5F5),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
              //onPressed: (){},
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
             // onPressed: () {},
              elevation: 0.0,
              highlightElevation: 0.0,
            ),
          ],
          ),
          new SliverList(
              delegate: new SliverChildListDelegate([
                Container(child: Text('test',style:TextStyle(color: Colors.black),),decoration:BoxDecoration(color:Colors.black),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.green),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.yellow),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.blue),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.pink),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.cyan),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.purple),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.orange),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.grey),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.black),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.black),),decoration:BoxDecoration(color:Colors.black),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.green),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.yellow),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.blue),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.pink),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.cyan),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.purple),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.orange),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.grey),height: 300,),
                Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.black),height: 300,),
              ])

              // Container(child: Text('test',style:TextStyle(color: Colors.red),),decoration:BoxDecoration(color:Colors.yellow),height: 300,),
              //delegate: new SliverChildListDelegate(buildTextViews(50))
          )
        ])
      ),
    );
  }
}

List buildTextViews(int count) {
  List<Widget> strings = List();
  for (int i = 0; i < count; i++) {
    strings.add(new Padding(padding: new EdgeInsets.all(16.0),
        child: new Text("Item number " + i.toString(),
            style: new TextStyle(fontSize: 20.0))));
  }
  return strings;
}