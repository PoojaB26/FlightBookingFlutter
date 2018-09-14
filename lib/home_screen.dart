import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}


class HomeScreenState extends State<HomeScreen> {

  final nameController = TextEditingController();



  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(elevation: 0.0,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text("MakeMyFlights",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50.0,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Full Name",
                  filled: true,
                  fillColor: Colors.white
              ),

            // onChanged listener listens to every change to textfield
//              onChanged: (text){
//                print(text);
//              },

            ),
            SizedBox(height: 50.0,),
            MaterialButton(
              height: 50.0,
              minWidth: MediaQuery.of(context).size.width*0.90,
              onPressed: (){
                print(nameController.text);
              },
              child: Text("PROCEED", style: TextStyle(color: Colors.white),),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}