import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'flight_list_screen.dart';
import 'flights_details_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flights App',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        'list': (BuildContext context) => FlightListScreen(),
        'details': (BuildContext context) => FlightDetailScreen(),
      },
    );
  }
}
