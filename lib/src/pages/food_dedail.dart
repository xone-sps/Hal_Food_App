import 'package:flutter/material.dart';
import 'order_page.dart';
//class Food {
//  const Food(this.index, this.title, this.price, this.color);
//  final int index;
//  final String title;
//  final int price;
//  final MaterialColor color;
//}
//const List<Food> allFood = <Food>[
//  Food(0, 'Home', 2000, Colors.teal),
//  Food(1, 'Business', 3000, Colors.cyan),
//  Food(2, 'School', 4000, Colors.orange),
//  Food(3, 'Flight', 5000, Colors.blue)
//];

class FoodDetail extends StatefulWidget {
//  const FoodDetail({ Key key, this.food }) : super(key: key);
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  final mainfont = 'boonhome';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ລາຍລະອຽດເມນູ",
          style: TextStyle(color: Colors.white, fontFamily: mainfont),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff9bca5d),
        actions: <Widget>[ChekcoutButton()],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[Image.asset("assets/images/fish1.jpg")],
            ),
          ),
          FoodCardDetail(),
          FoodCardDetail(),
          FoodCardDetail(),
          FoodCardDetail(),
          FoodCardDetail(),
          FoodCardDetail()
        ],
      ),
    );
  }

  Widget FoodCardDetail() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(15.5),
                child: (Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Menu name",
                      style: TextStyle(fontFamily: mainfont),
                    ),
                    Text(
                      "20000",
                      style: TextStyle(fontFamily: mainfont),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(Icons.add, color: Color(0xff9bca5d))),
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget ChekcoutButton() {
    return IconButton(
      padding: EdgeInsets.only(left: 20.0),
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => OrderPage()));
      },
    );
  }
}
