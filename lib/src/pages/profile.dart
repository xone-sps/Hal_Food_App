import 'package:flutter/material.dart';
import 'package:hal_food_app/main.dart';
import 'order_page.dart';
import '../widgets/custom_list_profile.dart';
import 'edit_profile.dart';

class Profile extends StatefulWidget {
//  const FoodDetail({ Key key, this.food }) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {
  final mainColor = (Color(0xff9bca5d));
  bool turnAppNotification = false;
  bool turnOnTracking = false;
  final mainfont='boonhome';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold,fontFamily: mainfont),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(0, 4.0),
                              color: Colors.black12)
                        ],
                        image: DecorationImage(
                          image: AssetImage("assets/images/hal_food.jpg"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Xone Sengphosy",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold,fontFamily: mainfont),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "020 52202014",
                        style: TextStyle(fontSize: 16.0,fontFamily: mainfont),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => EditProfile()
                          ));
                        },
                        child: Container(
                          width: 60.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              border: Border.all(color: mainColor)),
                          child: Center(
                              child: Text(
                            "Edit",
                            style: TextStyle(fontSize: 16.0, color: mainColor,fontFamily: mainfont),
                          )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Account",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,fontFamily: mainfont),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: ProfileList(
                          icon: Icons.pin_drop,
                          title: "Vientiane Captital",
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        color: mainColor,
                        indent: 20.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ProfileList(
                          icon: Icons.visibility,
                          title: "Change Password",
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        color: mainColor,
                        indent: 20.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ProfileList(
                          icon: Icons.shopping_cart,
                          title: "Shipping",
                        ),
                      ),
                      Divider(
                        height: 10.0,
                        color: mainColor,
                        indent: 20.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ProfileList(
                          icon: Icons.payment,
                          title: "Payment",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Notification ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,fontFamily: mainfont),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "App Notification",
                            style: TextStyle(fontSize: 16.0,fontFamily: mainfont),
                          ),
                          Switch(
                            activeColor: mainColor,
                            value: turnAppNotification,
                            onChanged: (bool value) {
                              setState(() {
                                turnAppNotification = true;
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(height: 10.0, color: mainColor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Location tracking",
                            style: TextStyle(fontSize: 16.0,fontFamily: mainfont),
                          ),
                          Switch(
                            activeColor: mainColor,
                            value: turnOnTracking,
                            onChanged: (bool value) {
                              setState(() {
                                turnOnTracking = true;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
