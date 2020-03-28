import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FoodCard extends StatelessWidget{
final String categoryName;
final String imagePath;
final int numberOfitem;
FoodCard({this.categoryName,this.imagePath,this.numberOfitem});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 8.0),
//      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage(imagePath),
                 fit: BoxFit.cover,
               ),
                  borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          offset: Offset(2.0,2.0)
                      )
                    ]
                ),
              ),
      SizedBox(height: 5.0,),

Container(
  child: Row(
    children: <Widget>[
      Text(categoryName,style: TextStyle(fontSize: 10.0)),
      Text(("($numberOfitem)"),style: TextStyle(fontSize: 10.0,color: Color(0xff9bca5d))),
//      Text("($numberOfitem) ອັນ",style: TextStyle(fontSize: 10.0,color: Colors.green )),
    ],
  ),
),

            ],
          ),
        ),
//      ),
    );
  }
}