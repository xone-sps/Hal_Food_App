import 'package:flutter/material.dart';
import 'order_page.dart';

class Contact extends StatefulWidget{
//  const FoodDetail({ Key key, this.food }) : super(key: key);
  @override
  _ContactPageState createState() => _ContactPageState();
}
class _ContactPageState extends State<Contact>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ຕິດຕໍ່ພວກເຮົາ",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff9bca5d),
        actions: <Widget>[ChekcoutButton()],
      ),
      body: ListView(
//        padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 16.0,bottom: 36.0),
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/fish1.jpg")
              ],
            ),
          ),
          FoodCardDetail(),
              Padding(
                padding: const EdgeInsets.only(top:15.0,bottom: 15.0,right: 10.0,left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text("Call Center"),
                    Text("+8562052202015"),
                  ],
                ),
              ),   Padding(
            padding: const EdgeInsets.only(top:15.0,bottom: 15.0,right: 10.0,left: 10.0),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text("Call Center"),
                    Text("+8562052202015"),
                  ],
                ),
              ),   Padding(
            padding: const EdgeInsets.only(top:15.0,bottom: 15.0,right: 10.0,left: 10.0),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text("Call Center"),
                    Text("+8562052202015"),
                  ],
                ),
              )
        ],
      ),
    );
  }

  Widget FoodCardDetail (){
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom:5.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(15.5),
                child: (
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.phone),
                        Text("Call Center"),
                        Text("+8562052202015"),
                        InkWell(
                            onTap:(){},
                            child: Icon(Icons.add,color: Color(0xff9bca5d))
                        ),
                      ],
                    )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget ChekcoutButton() {
    return IconButton(
      padding: EdgeInsets.only(left: 20.0),
      icon: Icon(Icons.shopping_cart,color: Colors.white,),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>OrderPage()));
      },
    );
  }
}
