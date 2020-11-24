import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            // Bottom that pops up from the bottom of the screen.
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.shopping_bag_outlined),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
