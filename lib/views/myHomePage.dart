import 'package:crud_rocketseat/components/drawer.dart';
import 'package:crud_rocketseat/components/listItem.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          )
        ],
        title: Center(child: Text("RLX")),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(tag: "image"),
          ListItem(tag: "image1"),
          ListItem(tag: "image2"),
          ListItem(tag: "image3"),
        ],
      ),
      drawer: MenuDrawer(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
