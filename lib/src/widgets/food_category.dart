import 'package:flutter/material.dart';
import 'package:hal_food_app/src/widgets/category_card.dart';
// import data
import '../data/category_data.dart';
// import model
import '../models/category.dart';
// import food card
import 'category_card.dart';
class FoodCategory extends StatelessWidget{

  final List<Category> _categories =categories;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal ,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfitem: _categories[index].numberOfitem,
          );
        }

      ),
    );
  }
}