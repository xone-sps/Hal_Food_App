import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../models/cart_model.dart';
import '../models/food_model.dart';
import '../widgets/cart_buttom_sheet.dart';
import '../widgets/food_card.dart';
import 'package:hal_food_app/src/pages/checkout_page.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class Explore extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Explore> {
  int value = 0;

  showCart() {
    showModalBottomSheet(
      shape: roundedRectangle32,
      context: context,
      builder: (context) => CartBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: <Widget>[
//            buildAppBar(),
            buildFoodFilter(),
            buildFoodList(),
            buildShowCart(),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    int items = 0;
    Provider.of<Cart>(context).cartItems.forEach((cart) {
      items += cart.quantity;
    });
    return SafeArea(
      child: Row(
        children: <Widget>[
          Text('MENU',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Spacer(),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          Stack(
            children: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: showCart),
              Positioned(
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: mainColor),
                  child: Text(
                    '$items',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildFoodFilter() {
    return Container(
      height: 50,
      //color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: List.generate(foodTypes.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ChoiceChip(
              selectedColor: mainColor,
              labelStyle: TextStyle(
                  color: value == index ? Colors.white : Colors.black),
              label: Text(foodTypes[index]),
              selected: value == index,
              onSelected: (selected) {
                setState(() {
                  value = selected ? index : null;
                });
              },
            ),
          );
        }),
      ),
    );
  }

  Widget buildFoodList() {
    return Expanded(
      child: GridView.builder(
        itemCount: foods.length,
        physics: BouncingScrollPhysics(),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 4 / 6,
          mainAxisSpacing: 12,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return FoodCard(foods[index]);
        },
      ),
    );
  }

  Widget buildShowCart() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CheckOutPage()));
        },
        padding: EdgeInsets.only(right: 12.0, left: 12),
        color: Color(0xff9bca5d),
        child: Text('ດຳເນີນການສັ່ງຊື້',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'boonhome')),
      ),
    );
  }
}
