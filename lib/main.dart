import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dresses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green[400],
        accentColor: Color(0xFFFEF9EB),
      ),
      home: HomeScreen(),
    );
  }
}