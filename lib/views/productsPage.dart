import 'package:crud_rocketseat/components/drawer.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  static const String routeName = '/produtos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produtos"),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Text("Produtos"),
      ),
    );
  }
}
