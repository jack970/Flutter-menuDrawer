import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  static const routeName = '/contacts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
      ),
      // drawer: MenuDrawer(),
      body: Center(
        child: Text("Contatos"),
      ),
    );
  }
}
