import 'package:flutter/material.dart';
import '../constant/color.dart';
import '../../main.dart';
import 'package:hal_food_app/src/models/cart_model.dart';
import '../models/food_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
       Card(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: <Widget>[
               buildImage(),
               buildTitle(),
               buildPriceInfo(),
             ],
           ),
         ),
       )
        ],
      ),
    );
  }

  Widget buildImage() {
    return Card(
      shape: roundedRectangle,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Image.network(
          food.image,
          fit: BoxFit.fill,
          height: 100,
          loadingBuilder: (context, Widget child, ImageChunkEvent progress) {
            if (progress == null) return child;
            return Padding(
                padding: EdgeInsets.all(32),
                child: CircularProgressIndicator(
                  value: progress.expectedTotalBytes != null ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes : null,
                ));
          },
        ),
      ),
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
            '₭ ${food.price}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Card(
            margin: EdgeInsets.only(right: 8),
            shape: roundedRectangle,
            color: mainColor,
            child: InkWell(
              onTap: addItemToCard,
              customBorder: roundedRectangle,
              child: Icon(Icons.add,color: secondColor,),
            ),
          )
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
