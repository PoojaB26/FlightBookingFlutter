import 'package:flutter/material.dart';

class FlightDetailScreen extends StatelessWidget{

  final String passengerName;
  FlightDetailScreen({
    this.passengerName
  });
  @override
  Widget build(BuildContext context) {


    _cityStyle(code, cityName, time){
      return Column(
        children: <Widget>[
          Text(code, style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              fontWeight: FontWeight.bold
          ),),
          Text(cityName, style: TextStyle(fontSize: 18.0),),
          SizedBox(height: 10.0,),
          Text(time, style: TextStyle(color: Colors.grey, fontSize: 14.0),)
        ],
      );
    }


    final _flightDetailsCard =  Card(
      elevation: 5.0,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical:20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _cityStyle("BOM", "Mumbai", "5:30PM"),
              Icon(Icons.airplanemode_active),
              _cityStyle("CCU", "Kolkata", "8:30PM"),
            ],
          ),
        ),
      ),
    );

    getRichText(title, name){
      return RichText(
        text: TextSpan(
            style: TextStyle(fontSize: 16.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: title, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: name, style: TextStyle(color: Colors.grey)),
            ]
        ),
      );
    }


    final _passengerDetailsCard =  Card(
      elevation: 5.0,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Container(
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getRichText("Passenger ", "Pooja"),
            SizedBox(height: 10.0,),
            getRichText("Date ", "24/05/21"),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getRichText("Flight ", "INDIGO042B"),
                SizedBox(width: 10.0,),
                getRichText("Class ", "Business")
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                getRichText("Seat ", "21B"),
                SizedBox(width: 10.0,),
                getRichText("Gate ", "17A")
              ],
            ),
          ],
        ),
      ),
    );


    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: Container(
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
        )
    );
  }
}