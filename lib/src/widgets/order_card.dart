import 'package:flutter/material.dart';
import 'package:hal_food_app/src/constant/color.dart';
import '../data/food_data.dart';
import '../models/food.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderCard extends StatefulWidget {
  final int id;
  final String name;
  final String imagePath;
  final String description;
  final String category;
  final int discount;
  final int delivery;
  final int price;
  OrderCard(
      {this.id,
      this.name,
      this.imagePath,
      this.description,
      this.price,
      this.category,
      this.discount,
      this.delivery});

  List<Food> _foods = foods;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<OrderCard> {
  int amount = 1;

  void AddAmount() {
    setState(() {
      amount++;
    });
  }

  void MinusAmount() {
    setState(() {
      if (amount > 1) amount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//            Image container
            cartImage(),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Menu name",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "20,000 kip".toString(),
                  style: TextStyle(color: Color(0xff9bca5d)),
                ),
                Container(
                  height: 45.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "name of menu",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Text(
                                  "x",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                 addmoreQuantity(),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.delete_sweep,
                    color: Colors.red,
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget addmoreQuantity(){
   return Column(
     children: <Widget>[
       Container(
         height: 25.0,
         width: 175.9,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             InkWell(
                 onTap: () {
                   MinusAmount();
                 },
                 child: Icon(
                   FontAwesomeIcons.minus,
                   color: Color(0xff9bca5d),
                 )),
//                  Text(
//                    '$_counter',
//                    style: Theme.of(context).textTheme.display1,
//                  ),
             Container(
               width: 90,
//               color: mainColor,
             color: mainColor,
               height: 500,
               margin: EdgeInsets.only(right: 15,left: 15),
               child: Center(
                 child: Text(
                   'ຈຳນວນ $amount',
                   style: TextStyle(fontSize: 14.0, color: Colors.white),
                 ),
               ),
             ),
             InkWell(
                 onTap: () {
                   AddAmount();
                 },
                 child: Icon(FontAwesomeIcons.plus,
                     color: Color(0xff9bca5d))),
           ],
         ),
       ),

     ],
   );
  }

Widget cartImage() {
 return  Container(
   height: 90.0,
   width: 90.0,
   decoration: BoxDecoration(
       image: DecorationImage(
         image: NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'),
         fit: BoxFit.cover,
       ),
       borderRadius: BorderRadius.circular(6.0),
       boxShadow: [
         BoxShadow(
             color: Colors.grey,
             blurRadius: 1.0,
             offset: Offset(1.0, 1.0))
       ]),
 );
}

//  floatingActionButton: FloatingActionButton(
//  onPressed: _incrementCounter,
//  tooltip: 'Increment',
//  child: Icon(Icons.add),
//  ),
}
