import 'package:flutter/material.dart';
import '../models/food.dart';

class PopularFoods extends StatefulWidget{
//  final Food food;
//  PopularFoods({this.food});

  final int id;
  final String name;
  final String imagePath;
  final String description;
  final String category;
  final int discount;
  final int delivery;
  final int price;
  PopularFoods({this.id,this.name, this.imagePath, this.description,this.price,this.category,this.discount,this.delivery});
  @override
  _PopularFoodState createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFoods>{
//  Food get food => widget.foods;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 540.0,
            height: 200.0,
            child: Image.network(
                widget.imagePath,
//              fit: BoxFit.cover,
              fit: BoxFit.fill,
              loadingBuilder: (context, Widget child, ImageChunkEvent progress) {
                if (progress == null) return child;
                return Padding(
                    padding: EdgeInsets.all(50),
                    child: CircularProgressIndicator(
                      value: progress.expectedTotalBytes != null ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes : null,
                    ));
              },
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
            height: 60.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black54,Colors.black12],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 10.0,
            right: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 20.0),
                    Text(widget.name,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold , color: Color(0xff9bca5d)),),
                  ],
                ),
                  Column(
                    children: <Widget>[
                      Text(widget.description,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold , color: Colors.white),)
                    ],
                  ),
                Text("Free Delivery",style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}