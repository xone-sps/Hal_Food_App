import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget{
  final IconData icon;
  final String title;
  ProfileList({this.icon,this.title});
  final mainColor = (Color(0xff9bca5d));
  @override
Widget build(BuildContext context) {
    // TODO: implement build
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
          Icon(icon,color: mainColor,),
          SizedBox(width: 15.0,),
          Text(title),
        ],
      ),
    );
}}
