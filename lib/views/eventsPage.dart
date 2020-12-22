import 'package:crud_rocketseat/components/drawer.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = '/eventos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eventos"),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Text("Eventos"),
      ),
    );
  }
}
