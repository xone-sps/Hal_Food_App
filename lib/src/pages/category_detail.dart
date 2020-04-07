import 'package:flutter/material.dart';

class CategoryDetail extends StatefulWidget {
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  final mainfont = 'boonhome';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "ຊື່ໝວດໝູ່ເມນູ",
          style: TextStyle(fontFamily: mainfont,),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[Image.asset("assets/images/fish1.jpg")],
                ),
              ),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black54, Colors.black12],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                ),
              ),
              Positioned(
                left: 0.0,
                bottom: 100.0,
                right: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Lorem Ipsum is simply dummy text",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: mainfont),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
              )
            ],
          ),
//          Container(
//            child: Text("Description of food category"),
//          ),
          FoodItem(),
          FoodItem(),
          FoodItem(),
          FoodItem(),
          FoodItem(),
          FoodItem(),
        ],
      ),
    );
  }

  Widget FoodItem() {
    return Container(
      child: Column(
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
                            image: AssetImage("assets/images/fish1.jpg"),
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
                    Text(
                      "Menu name",
                      style: TextStyle(fontFamily: mainfont),
                    ),
                    Text("20000 Kip"),
                  ],
                )),
              ),
            ),
          ),
//          )
        ],
      ),
    );
  }
}
