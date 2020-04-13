import 'package:flutter/material.dart';
import 'order_page.dart';
import '../constant/color.dart';
import '../widgets/cart_buttom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:hal_food_app/src/models/cart_model.dart';
import 'package:flutter/services.dart';

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

//  final Food food;
//  FoodCard(this.food);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
//  Food get food => widget.food;
  showCart() {
    showModalBottomSheet(
      shape: roundedRectangle32,
      context: context,
      builder: (context) => CartBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: mainColor));
    return Scaffold(
//      backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(color: secondColor),
          title: Text(
            "ລາຍລະອຽດເມນູ",
            style: TextStyle(color: Colors.white, fontFamily: mainfont),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff9bca5d),
          elevation: 0.0,
          actions: <Widget>[
            buildCart(),
            SizedBox(
              width: 8,
            )
          ],
        ),
        body: new Container(
          color: Colors.white,
//          buildAppBar(),
          child: Column(
            children: <Widget>[
              ImageFoodDetail(),
              FoodCardDetail(),
              FoodCardDetail(),
              FoodCardDetail(),
            ],
          ),
        ));
  }

  Widget ImageFoodDetail() {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Image.network(
                'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg')
          ],
        ),
      ),
    );
  }

  Widget FoodCardDetail() {
    return Container(
//      height: MediaQuery.of(context).size.height,
      height: 100,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(15.5),
                        child: (Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Menu name",
                                  style: TextStyle(
                                      fontFamily: mainfont,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "20000 ₭",
                                  style: TextStyle(
                                      fontFamily: mainfont,
                                      color: mainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                Card(
                                  margin: EdgeInsets.only(right: 15),
                                  shape: roundedRectangle,
                                  color: Color(0xff9bca5d),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    customBorder: roundedRectangle,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Description of menu detail',
                                        style: TextStyle(
                                            fontFamily: mainfont,
                                            fontSize: 14.0),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCart() {
    return Stack(
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => OrderPage()));
            }),
        Positioned(
          right: 0,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(shape: BoxShape.circle, color: yello),
            child: Text(
              '3',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ),
      ],
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
          Text('Food Detail',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Spacer(),
          Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: showCart),
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
//  addItemToCard() {
//    final snackBar = SnackBar(
//      content: Text('${food.name} added to cart'),
//      duration: Duration(milliseconds: 100),
//    );
//    Scaffold.of(context).showSnackBar(snackBar);
//    CartModel cartModel = CartModel(food: food, quantity: 1);
//    Provider.of<Cart>(context).addItem(cartModel);
//  }
}
