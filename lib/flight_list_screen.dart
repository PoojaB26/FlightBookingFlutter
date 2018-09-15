import 'package:flutter/material.dart';
import 'flight_card.dart';
import 'flight_dummy.dart';
import 'flight_model.dart';


class FlightListScreen extends StatelessWidget{

  Flight flight;

  final String userFullName;
  FlightListScreen({this.userFullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Welcome $userFullName"),),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(

              itemCount: 5,
              itemBuilder: (context, index) {
                flight = FlightsMockData.getFlights(index);
                return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlightCard(
                  passengerName: userFullName,
                  isClickable: true,
                  flight: flight,
                ),
              );
              }),
        )
    );
  }

}