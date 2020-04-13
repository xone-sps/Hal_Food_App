import 'package:flutter/material.dart';
import 'package:hal_food_app/main.dart';
import 'package:hal_food_app/src/pages/explore.dart';
import '../pages/home.dart';
import '../pages/order_page.dart';
import '../pages/profile.dart';
import '../pages/contact.dart';
import 'package:hal_food_app/src/constant/color.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<Home> {
  List<Widget> pages;
  Widget currentPage;

  int currentTabIndex = 0;
  HomePage homePage;
  OrderPage orderPage;
  Contact contactPage;
  Profile profilePage;
  Explore explorePage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    contactPage = Contact();
    profilePage = Profile();
    explorePage = Explore();
    pages = [homePage, orderPage, contactPage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: mainColor)); //set color status bar
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      appBar: currentTabIndex == 0
          ? AppBar(
              backgroundColor: mainColor,
              brightness: Brightness.light,
              leading: Padding(
                padding: EdgeInsets.only(left: 12),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: secondColor,
                    size: 32.0,
                  ),
                  onPressed: () {},
                ),
              ),
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "ສົ່ງທົ່ວປະເທດ",
                      style: TextStyle(
                          fontSize: 26.0,
                          color: secondColor,
                          fontFamily: mainfont),
                    ),
                  ]),
              actions: <Widget>[ChekcoutButton()],
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: mainColor,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
//          BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text("Explore")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("Cart")),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), title: Text("Contact")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
        ],
      ),
      body: currentPage,
    );
  }

  Widget ChekcoutButton() {
    return Stack(
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: secondColor,
            ),
            onPressed: () {}),
        Positioned(
          right: 8,
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

  Widget menu() {
    return IconButton(
      icon: Icon(
        Icons.restaurant_menu,
        color: mainColor,
      ),
      onPressed: () {
        print('you click menu');
      },
    );
  }
}
