import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.only(top: 230.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: menuWidgets('Flight', Icons.flight, Colors.purple),
                      onTap: () {
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                      return FlightScreen();
//                    }));
                      },
                    ),
                    menuWidgets('Hotel', Icons.hotel, Colors.orange),
                    menuWidgets('Train', Icons.train, Colors.yellow),
                    menuWidgets('Bus', Icons.directions_bus, Colors.red)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      menuWidgets('Movies', Icons.movie, Colors.green),
                      menuWidgets('Attractions', Icons.pages, Colors.red),
                      menuWidgets('Taxi', Icons.local_taxi, Colors.blue),
                      menuWidgets(
                          'Eats', Icons.confirmation_number, Colors.lightBlue)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
Widget menuWidgets(String text, IconData icon, MaterialColor color) {
  return Column(
    children: <Widget>[
      Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0), color: color),
        child: Center(
          child: Icon(icon),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      )
    ],
  );
}
}
