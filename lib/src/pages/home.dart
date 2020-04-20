import 'package:flutter/material.dart';
import 'package:hal_food_app/src/models/food.dart';
import 'package:hal_food_app/src/pages/explore.dart';
import '../widgets/search.dart';
import '../widgets/food_category.dart';
import '../widgets/popular_food.dart';
import 'food_dedail.dart';
import 'package:hal_food_app/src/constant/color.dart';
import 'package:hal_food_app/src/widgets/slider.dart';
//import food data
import '../data/food_data.dart';
//import '../models/food.dart';

class HomePage extends StatefulWidget {
//  List<Foods> _foods =foods;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

//      Yello theme

//     body: ListView(
//       children: <Widget>[
//         Column(
//           children: <Widget>[
//             Stack(
//               children: <Widget>[
//                 Container(
//                   height: 250.0,
//                   width: double.infinity,
//                   color: Colors.yellow[700],
//                 ),
//                 Positioned(
//                   bottom: 30.0,
//                   right: 100.0,
//                   child: Container(
//                     height: 400.0,
//                     width: 400.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(200.0),
//                       color: Colors.yellow[400].withOpacity(0.5),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 70.0,
//                   left: 150.0,
//                   child: Container(
//                     height: 300.0,
//                     width: 300.0,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(200.0),
//                       color: Colors.yellow[400].withOpacity(0.5),
//                     ),
//                   ),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         SizedBox(
//                           width: 15.0,
//                         ),
//                         Container(
//                           alignment: Alignment.topLeft,
//                           width: 50.0,
//                           height: 50.0,
//                           decoration: BoxDecoration(
//                               border: Border.all(
//                                   color: Colors.white,
//                                   style: BorderStyle.solid,
//                                   width: 2.0),
//                               shape: BoxShape.circle,
//                               image: DecorationImage(
//                                   image: NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'))),
//                         ),
//                         SizedBox(
//                           width: MediaQuery.of(context).size.width - 120.0,
//                         ),
//                         Container(
//                           alignment: Alignment.topRight,
//                           child: IconButton(
//                             icon: Icon(Icons.menu),
//                             color: Colors.white,
//                             onPressed: () => {},
//                             iconSize: 30.0,
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 50.0,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 15.0),
//                       child: Text('Free Delivery',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'Quicksand',
//                               fontSize: 30.0)),
//                     ),
//                     SizedBox(
//                       height: 15.0,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 15.0),
//                       child: Text('What do you want to buy?',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'Quicksand',
//                               fontSize: 23.0)),
//                     ),
//                     SizedBox(
//                       height: 25.0,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 15.0, right: 15.0),
//                       child: Material(
//                         elevation: 5.0,
//                         borderRadius: BorderRadius.circular(5.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                               border: InputBorder.none,
//                               prefixIcon: Icon(Icons.search,
//                                   color: mainColor, size: 30.0),
//                               contentPadding:
//                               EdgeInsets.only(left: 15.0, top: 15.0),
//                               hintText: 'Search',
//                               hintStyle: TextStyle(
//                                   color: Colors.grey,
//                                   fontFamily: 'Quicksand')),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15.0,
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15.0,
//             ),
//             Stack(
//               children: <Widget>[
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Material(
//                   elevation: 1.0,
//                   child: Container(
//                     height: 75.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Container(
//                       height: 75.0,
//                       width: MediaQuery.of(context).size.width / 4,
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             height: 50.0,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'))),
//                           ),
//                           Text('Sofas',
//                               style: TextStyle(fontFamily: 'Quicksand'))
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 75.0,
//                       width: MediaQuery.of(context).size.width / 4,
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             height: 50.0,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image:
//                                     NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'))),
//                           ),
//                           Text('Wardrobe',
//                               style: TextStyle(fontFamily: 'Quicksand'))
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 75.0,
//                       width: MediaQuery.of(context).size.width / 4,
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             height: 50.0,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'))),
//                           ),
//                           Text('Desk',
//                               style: TextStyle(fontFamily: 'Quicksand'))
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: 75.0,
//                       width: MediaQuery.of(context).size.width / 4,
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             height: 50.0,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: NetworkImage('https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg'))),
//                           ),
//                           Text('Dresser',
//                               style: TextStyle(fontFamily: 'Quicksand'))
//                         ],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ],
//         )
//       ],
//     ),
      body: Container(
        padding: EdgeInsets.only(right: 8,left: 8),
        child: ListView(
         children: <Widget>[
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(right: 4,top: 10,left: 4),
                 child: Search(),
               ),
               Container(
                 height: 190,
                 child: Padding(
                   padding: EdgeInsets.only( top: 4.0, ),
                   child: PrefetchImageDemo(),
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 10,bottom: 10),
               child: FoodCategory(),
               ),
               Padding(
                 padding: EdgeInsets.only(top: 8,bottom: 8),
                 child:Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text(
                         "ອາຫານທີ່ຍອດນິຍົມ",
                         style: primayStyle,
                       ),
                       Row(
                         children: <Widget>[
                           InkWell(
                             onTap: (){
                               Navigator.of( context ).push( MaterialPageRoute(
                                   builder: (BuildContext context) => Explore() ) );
                             },
                             child: Text( 'View all',
                                 style: TextStyle( color: mainColor, fontSize: 16.0 ) ),
                           ),
                           Icon(Icons.chevron_right,color: mainColor,)
                         ],
                       )
                     ]),
               ),
               Container(
                 child:          Column(
                   children: foods.map( FoodItem ).toList( ),
                 ),
               )
             ],
           ),
         ],
        ),
      )

//      body: ListView(
//        shrinkWrap: true,
//        scrollDirection: Axis.vertical,
//        padding: EdgeInsets.only( top: 40.0, left: 20.0, right: 20.0 ),
//        children: <Widget>[
//          Search( ),
//        PrefetchImageDemo(),
//          Text( "ໝວດໝູ່ອາຫານ", style: primayStyle ),
//          SizedBox( height: 10.0 ),
////          food category section
//          FoodCategory( ),
//          FoodCategory( ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Text(
//                "ອາຫານທີ່ຍອດນິຍົມ",
//                style: primayStyle,
//              ),
////              InkWell(
////                  onTap: () {
////                    Navigator.of(context).push(MaterialPageRoute(
////                        builder: (BuildContext context) => AllFood()));
////                  },
////                  child: Text(
////                    "View all",
////                    style: TextStyle(color: mainColor, fontSize: 16.0),
////                  )),
//              OutlineButton(
//                onPressed: () {
//                  Navigator.of( context ).push( MaterialPageRoute(
//                      builder: (BuildContext context) => PrefetchImageDemo() ) );
//                },
//                child: Text( 'View all',
//                    style: TextStyle( color: mainColor, fontSize: 16.0 ) ),
//                color: Color( 0xff9bca5d ),
//                splashColor: Color( 0xff9bca5d ),
//              )
//            ],
//          ),
//          SizedBox( height: 10.0 ),
////            popular food section
//          Column(
//            children: foods.map( FoodItem ).toList( ),
//          ),
////          getWidget()
//        ],
//      ),
    );
  }

  Widget ChekcoutButton() {
    return IconButton(
      padding: EdgeInsets.only( left: 20.0 ),
      icon: Icon(
        Icons.shopping_cart,
        color: mainColor,
      ),
      onPressed: () {},
    );
  }

  Widget menu() {
    return IconButton(
      icon: Icon(
        Icons.restaurant_menu,
        color: mainColor,
      ),
      onPressed: () {},
    );
  }

//  Food item style and list

  List<Row> getWidget(Food food) {
    List<Row> list = new List<Row>( );
    for (var i = 0; i < foods.length - 1; i += 2) {
      list.add( Row(
        children: <Widget>[
          PopularFoods(
            id: food.id,
            name: food.name,
            description: food.description,
            imagePath: food.imagePath,
            category: food.category,
          )
        ],
      ) );
    }
  }

  Widget FoodItem(Food food) {
    return Container(
      margin: EdgeInsets.only( bottom: 20.0 ),
      child: InkWell(
        onTap: () {
          Navigator.of( context ).push( MaterialPageRoute(
              builder: (BuildContext context) => FoodDetail( ) ) );
        },
        child: PopularFoods(
          id: food.id,
          name: food.name,
          description: food.description,
          imagePath: food.imagePath,
          category: food.category,
//          price: food.price
        ),
      ),
    );
  }}