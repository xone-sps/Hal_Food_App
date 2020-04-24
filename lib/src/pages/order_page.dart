import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/order_card.dart';
import 'sigin_page.dart';
import 'package:hal_food_app/src/constant/color.dart';
//import 'package:hal_food/src/pages/sigin_page.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int amount;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: mainColor));
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondColor),
        title: Text(
          "ລາຍການສັ່ງຊື້",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff9bca5d),
      ),
      body: ListView(
//        padding: EdgeInsets.only(left: 8.0,right: 8.0),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
          OrderCard(),
        ],
      ),
      bottomNavigationBar: Totalcontainer(),
    );
  }

  Widget Totalcontainer() {
    return Card(
      child: Container(
        decoration: BoxDecoration(
//        borderRadius: BorderRadius.only(topLeft: 8.9,topRight: 8.0),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.white70,
                  blurRadius: 1.0,
                  offset: Offset(0.0, 0.0))
            ]),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        height: 250.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ລວມລາຄາໃນລາຍການ",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                Text(
                  "30,000 ₭ ",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ສ່ວນຫຼຸດ",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                Text(
                  "3,000 ₭ ",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ອາກອນ",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: mainfont,
                      fontSize: 16.0),
                ),
                Text(
                  "200 ₭",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ຄ່າຂົນສົ່ງ",
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
                ),
                Text(
                  "2,000 ₭",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Divider(
              height: 20.0,
              color: Color(0xff9bca5d),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "ລວມທັງໝົດ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0),
                ),
                Text(
                  "40,000 ₭ ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignInPage()));
                },
                padding: EdgeInsets.only(right: 12.0, left: 12),
                color: mainColor,
                child: Text('ດຳເນີນການສັ່ງຊື້',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
