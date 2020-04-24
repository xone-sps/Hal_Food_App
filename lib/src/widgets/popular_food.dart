import 'package:flutter/material.dart';
import 'package:hal_food_app/src/widgets/food_card.dart';
import 'package:hal_food_app/src/constant/color.dart';
import '../models/food_model.dart';

class PopularFoods extends StatefulWidget {
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFoods> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            buildFoodList(),
          ],
        ),
      ),
    );
  }

  Widget buildFoodList() {
    return Expanded(
        child: Container(
      child: GridView.builder(
        reverse: true,
        itemCount: foods.length,
        physics: BouncingScrollPhysics(),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.755,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context,int index) {
          return FoodCard(foods[index]);
        },
      ),
    ));
  }
}
