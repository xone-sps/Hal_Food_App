import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/order_page.dart';
import '../pages/profile.dart';
import '../pages/contact.dart';
import '../widgets/search.dart';

class Home extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<Home> {
  final mainStyle = TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: Color(0xff9bca5d),
      fontFamily: 'boonhome');
  final primayStyle = TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Color(0xff9bca5d),
      fontFamily: 'boonhome');
  final mainColor = Color(0xff9bca5d);

  List<Widget> pages;
  Widget currentPage;

  int currentTabIndex = 0;
  HomePage homePage;
  OrderPage orderPage;
  Contact contactPage;
  Profile profilePage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    contactPage = Contact();
    profilePage = Profile();
    pages = [homePage, orderPage, contactPage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: currentTabIndex == 0
          ? AppBar(
              backgroundColor: Colors.white,
              leading: Padding(
                padding: EdgeInsets.only(left: 12),
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: mainColor,
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
                      style: TextStyle(fontSize: 24.0, color: mainColor),
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
    return IconButton(
      padding: EdgeInsets.only(right: 10.0),
      icon: Icon(
        Icons.shopping_cart,
        color: mainColor,
      ),
      onPressed: () {
        print('you click checkout');
      },
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
