import 'package:flutter/material.dart';
import 'order_page.dart';
import '../constant/color.dart';
import '../widgets/cart_buttom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:hal_food_app/src/models/cart_model.dart';
import 'package:flutter/services.dart';

class FoodDetail extends StatefulWidget {
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
//  final String image;
  final List<String> extra = ['Extra 1', 'Extra 2', 'Extra 3', 'Extra 3'];
  final List<String> des_extra = [
    'Description of extar detail 1',
    'Description of extar detail 2',
    'Description of extar detail 3',
    'Description of extar detail 4'
  ];
  final List<String> price = ['15,000', '20,000', '18,000', '12,000'];
  final String desc =
      'I recently lost my job and don\'t have enough time or money to tend to Bo anymore. I have a lot of health issues that need attention...';

//  FoodDetail(this.image);

  showCart() {
    showModalBottomSheet(
      shape: roundedRectangle32,
      context: context,
      builder: (context) => CartBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: mainColor));
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                elevation: 0.0,
                iconTheme: IconThemeData(color: secondColor),
                title: Text(
                  "ລາຍລະອຽດເມນູ",
                  style: TextStyle(color: Colors.white, fontFamily: mainfont),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                actions: <Widget>[buildCart()],
              )
            ];
          },
          body: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 5.0, bottom: 15.0),
                    child: Text(
                      desc,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('Extra menu',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 20.0)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: FoodCardDetail(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ImageFoodDetail() {
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Image.network(
                'https://img.wongnai.com/p/1600x0/2019/06/29/5050cd38141c40fb88945e091196eda2.jpg')
          ],
        ),
      ),
    );
  }

  Widget FoodCardDetail() {
    return Container(
//      height: MediaQuery.of(context).size.height,
      height: 100,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(15.5),
                        child: (Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Menu name',
                                  style: TextStyle(
                                      fontFamily: mainfont,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "20000 ₭",
                                  style: TextStyle(
                                      fontFamily: mainfont,
                                      color: mainColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'Description of menu detail',
                                        style: TextStyle(
                                            fontFamily: mainfont,
                                            fontSize: 14.0),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCart() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
      child: Stack(
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => OrderPage()));
              }),
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
      ),
    );
  }

  Widget buildAppBar() {
    int items = 0;
    Provider.of<Cart>(context).cartItems.forEach((cart) {
      items += cart.quantity;
    });
    return SafeArea(
      child: Row(
        children: <Widget>[
          Text('Food Detail',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Spacer(),
          Stack(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: showCart),
              Positioned(
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: mainColor),
                  child: Text(
                    '$items',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
//  addItemToCard() {
//    final snackBar = SnackBar(
//      content: Text('${food.name} added to cart'),
//      duration: Duration(milliseconds: 100),
//    );
//    Scaffold.of(context).showSnackBar(snackBar);
//    CartModel cartModel = CartModel(food: food, quantity: 1);
//    Provider.of<Cart>(context).addItem(cartModel);
//  }

}
