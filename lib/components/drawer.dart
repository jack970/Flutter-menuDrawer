import 'package:crud_rocketseat/routes/Routes.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          _createHeader(
              name: "user",
              email: "Email@gmail.com",
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2016/03/21/17/10/person-1270953_960_720.jpg"),
              color: Theme.of(context).primaryColor),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              Navigator.of(context).pushNamed(Routes.home);
            },
          ),
          _createDrawerItem(
            icon: Icons.contacts,
            text: 'Contatos',
            onTap: () {
              Navigator.of(context).pushNamed(Routes.contacts);
            },
          ),
          _createDrawerItem(
            icon: Icons.event,
            text: 'Eventos',
            onTap: () => Navigator.of(context).pushNamed(Routes.events),
          ),
          _createDrawerItem(
            icon: Icons.shopping_basket_rounded,
            text: 'Produtos',
            onTap: () => Navigator.of(context).pushNamed(Routes.products),
          ),
          ListTile(
            title: Text("Versão: 0.0.1"),
            onTap: () {},
          )
        ],
      ),
    );
  }

  Widget _createHeader(
      {String name, String email, Color color, ImageProvider image}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      color: color,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 140,
              height: 140,
              margin: EdgeInsets.only(
                top: 30,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: image, fit: BoxFit.fill),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Text(
              email,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      onTap: onTap,
    );
  }
}
