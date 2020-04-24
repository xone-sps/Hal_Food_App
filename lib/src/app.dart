import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:hal_food_app/src/screens/main_screen.dart';
import 'package:hal_food_app/src/constant/color.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "HAL Food",
        theme: ThemeData(
          fontFamily: mainfont,
          primaryColor: mainColor,
          primaryColorDark: mainColor,
          backgroundColor: secondColor
        ),
        home: Home(),
    );
  }
}