import 'package:flutter/material.dart';
import 'home_screen.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flights App',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: new HomeScreen(),
    );
  }
}
