import 'package:flutter/material.dart';

class FlightListScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"),),
      body: RaisedButton(onPressed: (){
        Navigator.of(context).pushNamed('details');
      }),
    );
  }

}