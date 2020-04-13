import 'package:flutter/material.dart';
import 'package:hal_food_app/src/constant/color.dart';
import 'package:hal_food_app/src/constant/color.dart';
import 'package:hal_food_app/src/pages/order_page.dart';

class CategoryDetail extends StatefulWidget {
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          iconTheme: IconThemeData(
              color: secondColor
          ),
        backgroundColor: Color(0xff9bca5d),
        elevation: 0.0,
        title: Text(
          "ຊື່ໝວດໝູ່ເມນູ",
          style: TextStyle(fontFamily: mainfont,color: Colors.white),
        ),
          actions: <Widget>[buildCart(),
        SizedBox(width: 8,),]
      ),
      body: Container(
         child: Column(
           children: <Widget>[
             buildImage(),
             FoodItem(),
             FoodItem(),
             FoodItem(),
           ],
         ),

      ),
    );
  }
  Widget buildImage(){
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Image.network('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black54, Colors.black12],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 30.0,
            right: 10.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: <Widget>[
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text text Lorem Ipsum is simply dummy text text Lorem Ipsum is simply dummy text",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: mainfont),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
//                      ],
//                    ),
            ),
          )
        ],
      ),
    );
  }

  Widget FoodItem() {
    return Container(
      height:100,
      child: ListView(
             children: <Widget>[
               Column(
                 children: <Widget>[
                   InkWell(
                     onTap: () {},
                     child: Card(
                       child: Padding(
                         padding: EdgeInsets.all(15.5),
                         child: (Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               width: 60.0,
                               height: 60.0,
                               decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image: NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'),
                                     fit: BoxFit.cover,
                                   ),
                                   borderRadius: BorderRadius.circular(8.0),
                                   boxShadow: [
                                     BoxShadow(
                                         color: Colors.grey,
                                         blurRadius: 2.0,
                                         offset: Offset(2.0, 2.0))
                                   ]),
                             ),
                              Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text(
                                     "Menu name",
                                     style: TextStyle(fontFamily: mainfont,fontSize: 16.0,fontWeight: FontWeight.bold),
                                   ),
                                   Text(
                                     "Menu description description",
                                     style: TextStyle(fontFamily: mainfont,fontSize: 14.0),
                                     maxLines: 2,
                                     overflow: TextOverflow.ellipsis,
                                   ),
                                 ],
                               ),
                             Text("20000 ₭",style: TextStyle(fontSize: 16,color: mainColor,fontWeight: FontWeight.bold),),
                           ],
                         )),
                       ),
                     ),
                   ),
//          )
                 ],
        )],
      ),
    );
  }
  Widget buildCart() {
    return     Stack(
      children: <Widget>[
        IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),
            onPressed: (){
              Navigator.of( context ).push( MaterialPageRoute(
                  builder: (BuildContext context) => OrderPage( ) ) );
        }
        ),
        Positioned(
          right: 0,
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(shape: BoxShape.circle, color: yello),
            child: Text(
              '3',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
