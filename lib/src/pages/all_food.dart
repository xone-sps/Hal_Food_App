import 'package:flutter/material.dart';
import 'package:hal_food_app/src/widgets/small_button.dart';

class AllFood extends StatefulWidget{
  @override
  _AllFoodState createState() => _AllFoodState();
}

class _AllFoodState extends State<AllFood>{
  final mainColor = (Color(0xff9bca5d));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ອາຫານທັງໝົດ",style: TextStyle(fontFamily: 'boonhome'),),
//        backgroundColor: Colors.transparent,
      ),
      body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
//                  Text("All food item",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                  _allfoodItem(),
                  _allfoodItem(),
                  _allfoodItem(),
                  _allfoodItem(),
                  _allfoodItem(),
                  _allfoodItem(),
                  _allfoodItem(),
                ],
              ),
            ),
          ],
      ),
    );
  }

  Widget _allfoodItem(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow:[
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(0,1.5),
              color: Colors.black38,
            )]
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/fish2.jpg"
                    )
                ),
                borderRadius: BorderRadius.circular(6.0)
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Name of food",style: TextStyle(fontSize: 16.0,fontFamily: 'boonhome',fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Container(
                width: 250,
                child:
                Text("This is the description of the food item, It's really awesome!"),
              ),
              SizedBox(height: 10),
              Container(
                width: 210.0,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("20,000 ₭",style: TextStyle(color: mainColor),),
                    InkWell(
                      onTap: (){

                      },
                      child: SmallButton(
                        btnText: "ຊື້",),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}