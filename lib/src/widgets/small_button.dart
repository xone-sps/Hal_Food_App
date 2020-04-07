import 'package:flutter/material.dart';
class SmallButton extends StatelessWidget{
  final mainColor = (Color(0xff9bca5d));
  final mainfont = 'boonhome';
  final String btnText;
  SmallButton({this.btnText});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
    width: 60.0,
    height: 25.0,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6.0),
    border: Border.all(color: mainColor)),
    child: Center(
    child: Text( btnText,
    style: TextStyle(fontSize: 16.0, color: mainColor,fontFamily: mainfont),
    )),
    ) ;
  }
}

