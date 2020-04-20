import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(bottom: 8.0),
        child: Material(
          elevation: 3.0,
          borderRadius: BorderRadius.circular(25.0),
          child: TextField(
            style: TextStyle(color: Color(0xff9bca5d)),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
              prefixIcon:
                   InkWell(
                     onTap: (){},
                       child: Icon(Icons.search,color: Color(0xff9bca5d),)),
              hintText: "ປ້ອນເມນູອາຫານ",
              border: InputBorder.none,
            ),
          ),
        ),
      );
  }
}