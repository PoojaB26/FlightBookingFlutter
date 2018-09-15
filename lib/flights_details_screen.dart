import 'package:flutter/material.dart';
import 'flight_details_card.dart';
class FlightDetailScreen extends StatelessWidget{
  final String passengerName;

  FlightDetailScreen({this.passengerName});

  @override
  Widget build(BuildContext context) {

    getRichText(String first, String last){
      return RichText(
        text: TextSpan(
            style: TextStyle(fontSize: 16.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: '$first ', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: '$last', style: TextStyle(color: Colors.grey))
            ]
        ),
      );
    }
    final _passengerDetailsCard = Column(
      
        children: <Widget>[
          SizedBox(height: 48.0,),
          getRichText("Passenger", passengerName),
          SizedBox(height: 16.0,),
          getRichText("Date", "24-04-2018"),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              getRichText("Flight", "INDIGO240"),
              SizedBox(width: 16.0,),
              getRichText("Class", "Business"),
            ],
          ),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              getRichText("Seat", "21B"),
              SizedBox(width: 16.0,),
              getRichText("Gate", "17A")
            ],
          ),
          SizedBox(height: 48.0,),

        ],
    );

    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 60.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlightDetailsCard(),
                    _passengerDetailsCard,
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}