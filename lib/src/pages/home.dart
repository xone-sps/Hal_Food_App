import 'package:flutter/material.dart';
import 'package:hal_food_app/src/pages/explore.dart';
import '../widgets/search.dart';
import '../widgets/food_category.dart';
import '../widgets/popular_food.dart';
import 'package:hal_food_app/src/constant/color.dart';
import 'package:hal_food_app/src/widgets/slider.dart';
//import food data
import 'explore.dart';

class HomePage extends StatefulWidget {
//  List<Foods> _foods =foods;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(right: 8, left: 8),
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 4, top: 10, left: 4),
                child: Search(),
              ),
              Container(
                height: 190,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 4.0,
                  ),
                  child: Slider_Section(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: FoodCategory(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8,),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ອາຫານທີ່ຍອດນິຍົມ",
                        style: primayStyle,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Explore()));
                            },
                            child: Text('ທັງໝົດ',
                                style: TextStyle(
                                    color: mainColor, fontSize: 16.0)),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: mainColor,
                          )
                        ],
                      )
                    ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
//              height: 450,
                child: PopularFoods(),
              )
            ],
          ),
        ],
      ),
    ));
  }

  Widget ChekcoutButton() {
    return IconButton(
      padding: EdgeInsets.only(left: 20.0),
      icon: Icon(
        Icons.shopping_cart,
        color: mainColor,
      ),
      onPressed: () {},
    );
  }

  Widget menu() {
    return IconButton(
      icon: Icon(
        Icons.restaurant_menu,
        color: mainColor,
      ),
      onPressed: () {},
    );
  }
}
