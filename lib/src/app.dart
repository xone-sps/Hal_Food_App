import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:hal_food_app/src/models/cart_model.dart';
import 'package:hal_food_app/src/screens/main_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "HAL Food",
        theme: ThemeData(
          primaryColor: Color(0xff9bca5d),
          primaryColorDark: Color(0xff9bca5d)
        ),
        home: Home(),
    );
  }
}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return ChangeNotifierProvider(
//      builder: (context) => Cart(),
//      child: MaterialApp(
//        title: 'Flutter Food Ordering',
//        showSemanticsDebugger: false,
//        debugShowCheckedModeBanner: false,
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: Home(),
//      ),
//    );
//  }
//}