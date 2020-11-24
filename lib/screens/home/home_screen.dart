import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/components/body.dart';

import '../../main.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      appBar: buildAppBar(),
      body: Body(),
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

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
            );
          }
      ),
      title: Text('Dresses',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFEF9EB),
        ),
      ),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search)
        ),
        IconButton(
          icon: Icon(Icons.filter_alt_outlined),
        )
      ],
    );
  }
}
