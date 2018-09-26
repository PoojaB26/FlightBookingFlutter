import 'package:flights_app/flight_model.dart';

class FlightsMockData {

  static var count = 5;

  static var from = ["BBI", "CCU", "HYD", "BOM", "JAI"];
  static var to = ["BLR", "JAI", "BBI", "CCU", "AMD"];
  static var fromCity = ["Bhubaneshwar", "Kolkata", "Hyderabad", "Mumbai", "Jaipur"];
  static var toCity = ["Bangalore", "Jaipur", "Bhubaneshwar", "Kolkata", "Ahmedabad"];
  static var departTime = ["5:50 AM", "3:30 PM", "12:00PM", "4:20 AM", "1:00 PM"];
  static var arriveTime = ["8:40 AM", "7:25 PM", "4:00 PM", "8:21 AM", "3:25 PM"];

  static getFlights(int position) {
    return Flight(
        from[position],
        to[position],
        fromCity[position],
        toCity[position],
        departTime[position],
        arriveTime[position]);
  }

}