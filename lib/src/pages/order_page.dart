import 'package:flutter/material.dart';
import '../widgets/order_card.dart';
import 'sigin_page.dart';
//import 'package:hal_food/src/pages/sigin_page.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPageState createState() => _OrderPageState();
}
class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Your cart",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff9bca5d),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
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
      height: 180.0,
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Item total",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            Text("3,000 ₭ ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ],
         ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("3,0 ₭ ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("2,0 ₭",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          Divider(height: 20.0,color: Color(0xff9bca5d),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
              Text("40,000 ₭ ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
          SizedBox(height: 20.0,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));
                  },
                  padding: EdgeInsets.only(right:12.0,left: 12,top: 16,bottom: 16),
                  color: Color(0xff9bca5d),
                  child: Text('Check out', style: TextStyle(color: Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold)),
                ),
            ),
        ],
      ),
    );
  }
}