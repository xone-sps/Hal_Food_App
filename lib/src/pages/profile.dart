import 'package:flutter/material.dart';
import 'order_page.dart';

class Profile extends StatefulWidget{
//  const FoodDetail({ Key key, this.food }) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<Profile>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Your profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff9bca5d),
        actions: <Widget>[ChekcoutButton()],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/fish1.jpg")
              ],
            ),
          ),
          FoodCardDetail(),
          FoodCardDetail(),
          FoodCardDetail(),
          FoodCardDetail(),
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
                        Text("1"),
                        Text("Menu name"),
                        Text("20000"),
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
