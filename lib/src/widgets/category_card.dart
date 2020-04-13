import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfitem;
  FoodCard({this.categoryName, this.imagePath, this.numberOfitem});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80.0,
//      color: Color(0xff9bca5d),
//      margin: EdgeInsets.only(right: 4.0),
//      child: Card(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        offset: Offset(1.0, 1.0))
                  ]),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,
                    style: TextStyle(fontSize: 10.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(("($numberOfitem)"),
                      style:
                          TextStyle(fontSize: 10.0, color: Color(0xff9bca5d))),
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
