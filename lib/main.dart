import 'package:crud_rocketseat/routes/Routes.dart';
import 'package:crud_rocketseat/views/contactsPage.dart';
import 'package:crud_rocketseat/views/eventsPage.dart';
import 'package:crud_rocketseat/views/myHomePage.dart';
import 'package:crud_rocketseat/views/productsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        Routes.contacts: (BuildContext context) => ContactsPage(),
        Routes.events: (BuildContext context) => EventsPage(),
        Routes.products: (BuildContext context) => ProductsPage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF7159C1),
          accentColor: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home(),
    );
  }
}
