import 'package:flutter/material.dart';

Color yello = Color.fromRGBO(255, 204, 0, 1);
var roundedRectangle = RoundedRectangleBorder(
  borderRadius: BorderRadiusDirectional.circular(12),
  side: BorderSide(width: 0.1, color: yello),
);

var roundedRectangle32 = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
);
final mainStyle = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Color( 0xff9bca5d ),
    fontFamily: 'boonhome' );
final primayStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Color( 0xff030303 ),
    fontFamily: 'boonhome' );
final mainfont = 'boonhome';
final mainColor = (Color( 0xff9bca5d ));
final black = (Color( 0xff000000 ));
final secondColor = (Color( 0xffffffff ));
int currentTabIndex = 0;
