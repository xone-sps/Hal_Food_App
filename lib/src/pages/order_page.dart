import 'package:flutter/material.dart';
import '../widgets/order_card.dart';
import 'sigin_page.dart';
//import 'package:hal_food/src/pages/sigin_page.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPageState createState() => _OrderPageState();
}
class _OrderPageState extends State<OrderPage>{
  int amount;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ລາຍການສັ່ງຊື້",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff9bca5d),
      ),
      body: ListView(
//        padding: EdgeInsets.only(left: 8.0,right: 8.0),
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
      bottomNavigationBar:Totalcontainer(),
    );
  }
  Widget Totalcontainer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 220.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("ລວມລາຄາໃນລາຍການ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            Text("3,000 ₭ ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ],
         ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("ສ່ວນຫຼຸດ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("3,0 ₭ ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("ອາກອນ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("2,0 ₭",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("ຄ່າຂົນສົ່ງ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("200 ₭",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          Divider(height: 20.0,color: Color(0xff9bca5d),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("ລວມທັງໝົດ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("40,000 ₭ ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          SizedBox(height: 20.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));
                  },
                  padding: EdgeInsets.only(right:12.0,left: 12),
                  color: Color(0xff9bca5d),
                  child: Text('ດຳເນີນການສັ່ງຊື້', style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'boonhome')),
                ),
            ),
        ],
      ),
    );
  }
}