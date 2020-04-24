import 'package:flutter/material.dart';
import 'package:hal_food_app/src/constant/color.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(bottom: 8.0),
        child: Material(
          elevation: 0.0,
//          borderRadius: BorderRadius.circular(25.0),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 2,bottom: 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF666666),
                size: 24,
              ),
              fillColor: Color(0xFFF2F3F5),
              hintStyle: TextStyle(
                  color: Color(0xFF666666),
                  fontFamily: mainfont,
                  fontSize: 16),
              hintText: "Menu",
            ),

//            showCursor: true,
//            style: TextStyle(color: Color(0xff9bca5d)),
//            decoration: InputDecoration(
//
//              contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
//              prefixIcon:
//                   InkWell(
//                     onTap: (){},
//                       child: Icon(Icons.search,color: Color(0xff9bca5d),)),
//              hintText: "ປ້ອນເມນູອາຫານ",
//              border: InputBorder.none,
////              fillColor: fillColorGrey,
//            ),
          ),
        ),
      );
  }
}