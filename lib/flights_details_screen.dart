import 'package:flutter/material.dart';

class FlightDetailScreen extends StatelessWidget{
  final String passengerName;

  FlightDetailScreen({this.passengerName});

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
    final _passengerDetailsCard = Card(
      elevation: 5.0,
      child: Column(
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
      ),
    );

    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            //color: Colors.black,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.30,
                  color: Colors.amber,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.width*0.30,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.90,
                    //color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        _flightDetailsCard,
                        SizedBox(height: 20.0,),
                        _passengerDetailsCard,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}