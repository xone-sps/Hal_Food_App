import 'package:flutter/material.dart';
import 'package:hal_food_app/src/pages/food_dedail.dart';
import '../constant/color.dart';
import 'package:hal_food_app/src/models/cart_model.dart';
import '../models/food_model.dart';
import 'package:provider/provider.dart';

class FoodCard extends StatefulWidget {
  final Food food;
  FoodCard(this.food);

  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  Food get food => widget.food;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => FoodDetail()));
            },
            child: Card(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: buildImage(),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:8.0),
                        child: Column(
                          children: <Widget>[
//                 buildImage(),
                            buildTitle(),
                            buildPriceInfo(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.network(
              food.image,
              fit: BoxFit.fitWidth,
              height: 120,
              width: MediaQuery.of(context).size.width,
              loadingBuilder: (context, Widget child, ImageChunkEvent progress) {
                if (progress == null) return child;
                return Padding(
                    padding: EdgeInsets.all(40),
                    child: CircularProgressIndicator(
                      value: progress.expectedTotalBytes != null
                          ? progress.cumulativeBytesLoaded /
                          progress.expectedTotalBytes
                          : null,
                    ));
              },
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 10.0,
            right: 80,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [mainColor,mainColor],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                  )
              ),
            ),
          ),
          Positioned(
          left: 0.0,
          bottom: 20.0,
          right: 20.0,
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    Text('ຫຼຸດ 20%',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold ,color: secondColor),),
                  ],
                ),
              ],
            ),
          ),
        )
        ],
      )
    );
  }

  Widget buildTitle() {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 12.0, left: 8, right: 16),
      child: Text(
        food.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget buildPriceInfo() {
    return Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '${food.price} ₭',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            InkWell(
              onTap: addItemToCard,
              customBorder: roundedRectangle,
              child: Icon(
                Icons.shopping_cart,
                color: mainColor,
              ),
            ),

          ],
        ),
    );
  }
  addItemToCard() {
    final snackBar = SnackBar(
      content: Text('${food.name} added to cart'),
      duration: Duration(milliseconds: 100),
    );
    Scaffold.of(context).showSnackBar(snackBar);
    CartModel cartModel = CartModel(food: food, quantity: 1);
    Provider.of<Cart>(context).addItem(cartModel);
  }
}
