import 'package:flutter/material.dart';
import 'flights_details_screen.dart';


class FlightDetailsCard extends StatelessWidget{
  final String passengerName;
  final bool isClickable;

  FlightDetailsCard({
    this.passengerName,
    this.isClickable
});


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



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        isClickable?
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context)
                => FlightDetailScreen(passengerName: passengerName,)))
        :null;
      },
      child: Card(
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
      ),
    );
  }

}