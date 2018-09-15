import 'package:flutter/material.dart';
import 'flight_details_card.dart';

class FlightListScreen extends StatelessWidget{

  final String userFullName;
  FlightListScreen({this.userFullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome $userFullName"),),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlightDetailsCard(
                  passengerName: userFullName,
                  isClickable: true,
                ),
              )),
        )
    );
  }

}