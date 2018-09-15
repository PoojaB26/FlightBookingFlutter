import 'package:flutter/material.dart';
import 'flights_details_screen.dart';

class FlightListScreen extends StatelessWidget{

  final String userFullName;
  FlightListScreen({this.userFullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome $userFullName"),),
      body: RaisedButton(onPressed: (){
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => FlightDetailScreen(passengerName: userFullName,)));
      }),
    );
  }

}