import 'package:crud_rocketseat/views/productdetail.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String tag;

  ListItem({Key key, this.tag = ""}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetail(tag: tag),
          ),
        );
      },
      title: Text("Teste"),
      subtitle: Text("R\$ 440.00"),
      leading: Hero(
        child: Image.network(
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-spacegray-select-202011?wid=892&hei=820&&qlt=80&.v=1603406905000"),
        tag: tag,
      ),
      trailing: IconButton(
        icon: Icon(Icons.shopping_basket),
        color: Theme.of(context).accentColor,
        onPressed: () {},
      ),
    );
  }
}
