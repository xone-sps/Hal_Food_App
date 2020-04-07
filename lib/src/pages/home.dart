import 'package:flutter/material.dart';
import 'package:hal_food_app/main.dart';
import 'package:hal_food_app/src/models/food.dart';
import 'package:hal_food_app/src/widgets/small_button.dart';
import '../widgets/search.dart';
import '../widgets/food_category.dart';
import '../widgets/popular_food.dart';
import 'food_dedail.dart';
import 'all_food.dart';
//import food data
import '../data/food_data.dart';

class HomePage extends StatefulWidget {
//  List<Foods> _foods =foods;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final mainStyle = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Color(0xff9bca5d),
      fontFamily: 'boonhome');
  final primayStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Color(0xff030303),
      fontFamily: 'boonhome');
  final mainColor = (Color(0xff9bca5d));
  final black = (Color(0xff000000));
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
        children: <Widget>[
          Search(),
          Text("ໝວດໝູ່ອາຫານ", style: primayStyle),
          SizedBox(height: 10.0),
//          food category section
          FoodCategory(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "ອາຫານທີ່ຍອດນິຍົມ",
                style: primayStyle,
              ),
//              InkWell(
//                  onTap: () {
//                    Navigator.of(context).push(MaterialPageRoute(
//                        builder: (BuildContext context) => AllFood()));
//                  },
//                  child: Text(
//                    "View all",
//                    style: TextStyle(color: mainColor, fontSize: 16.0),
//                  )),
              OutlineButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => AllFood()));
                },
                child: Text('View all',style: TextStyle(color: mainColor, fontSize: 16.0)),
                color: Color(0xff9bca5d),
                splashColor:Color(0xff9bca5d) ,
              )
            ],
          ),
          SizedBox(height: 10.0),
//            popular food section
          Column(
            children: foods.map(FoodItem).toList(),
          ),
//          getWidget()
        ],
      ),
    );
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
//  Food item style and list

  List<Row> getWidget(Foods food) {
    List<Row> list = new List<Row>();
    for (var i = 0; i < foods.length - 1; i += 2) {
      list.add(Row(
        children: <Widget>[
          PopularFoods(
            id: food.id,
            name: food.name,
            description: food.description,
            imagePath: food.imagePath,
            category: food.category,
          )
        ],
      ));
    }
  }

  Widget FoodItem(Foods food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => FoodDetail()));
        },
        child: PopularFoods(
          id: food.id,
          name: food.name,
          description: food.description,
          imagePath: food.imagePath,
          category: food.category,
//          price: food.price
        ),
      ),
    );
  }
}
