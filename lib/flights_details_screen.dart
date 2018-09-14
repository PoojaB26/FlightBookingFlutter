import 'package:flutter/material.dart';

class FlightDetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    _cityStyle(String code, String cityName, String time){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            Text(code, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44.0,),),
            Text(cityName, style: TextStyle(fontSize: 14.0),),
            SizedBox(height: 10.0,),
            Text(time, style: TextStyle(color: Colors.grey, fontSize: 12.0),)
          ],
        ),
      );
    }

    final _flightDetailsCard =  Card(
      elevation: 5.0,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        height: 120.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _cityStyle("NYC", "New York City", "5:50 AM"),
            Icon(Icons.airplanemode_active),
            _cityStyle("SFO", "San Francisco", "8:50 AM"),
          ],
        ),
      ),
    );

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
          getRichText("Passenger", "John Doe"),
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
                    _flightDetailsCard,
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