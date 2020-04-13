import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hal_food_app/src/constant/color.dart';
//import 'package:flutter_launch/flutter_launch.dart';
import 'dart:async';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class Contact extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<Contact> {
//  GoogleMapController mapController;
  Future<void> _launched;
  String _phone = '020 52202014';
  String whatsapp = '020 52202014';
  String mail = 'halfood@gmail.ccom';
  @override
  initState() {
    super.initState();
  }
  double zoomVal = 5.0;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  Future<void> _mailTo(String url) async {
    if(await canLaunch((url))){
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _makeWhatsapp(String  url) async {
    if(await canLaunch(url)){
      await launch(url);
    } else{
      throw 'Could not launch $url';
    }
  }
  _facebookURL() async {
    const url = 'https://facebook.com/HalFood.LA';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }}
  _youtubekURL() async {
    const url = 'https://youtube.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }}
  _igURL() async {
    const url = 'https://instagram.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }}

  void whatsAppOpen() async {
//    await FlutterLaunch.launchWathsApp(phone: "5534992016545", message: "Hello");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: mainColor));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ຕິດຕໍ່ພວກເຮົາ",
          style: TextStyle(color: Colors.white, fontFamily: mainfont),
        ),
        centerTitle: true,
        backgroundColor: mainColor,
//        actions: <Widget>[ChekcoutButton()],
      ),
      body:
//    child:GoogleMap(
//    onMapCreated: _onMapCreated,
//    initialCameraPosition: CameraPosition(
//    target: _center,
//    zoom: 11.0,
//    ),
//    ),
          ListView(
//        padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 16.0,bottom: 36.0),
          children: <Widget>[
            Container(
            child:Column(
              children: <Widget>[
//                GoogleMap(
//                  onMapCreated: _onMapCreated,
//                  initialCameraPosition: CameraPosition(
//                    target: _center,
//                    zoom: 11.0,
//                  ),
//                ),
                FoodCardDetail(),
              InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.pin_drop),
                        Text(
                          "ບ້ານ ສີບຸນເຮືອງ, ເມືອງຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ",
                          style: TextStyle(fontSize: 16.0, fontFamily: mainfont),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(height: 10.0),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, right: 15.0, left: 15.0),
                    child: InkWell(
                      onTap: (){
                        _launched = _makePhoneCall('tel:$_phone');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.phone),
                          Text(
                            "+8562052202015",
                            style: TextStyle(fontSize: 16.0, fontFamily: mainfont),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(height: 10.0),
                InkWell(
                  onTap: () {
                    _launched = _makeWhatsapp('whatsapp:$whatsapp');
//                    whatsAppOpen();
                    print("hello whatsapp");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 12.0, bottom: 12.0, right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.whatsapp),
                        Text(
                          "+8562052202015",
                          style: TextStyle(fontSize: 16.0, fontFamily: mainfont),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Follow us",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          _facebookURL();
                        },
                        child: FaIcon(FontAwesomeIcons.facebook,size: 42.0,)),
                    SizedBox(width: 20.0,),
                    InkWell(
                        onTap: (){
                          _launched = _mailTo('mailto:$mail');
                        },
                        child: FaIcon(FontAwesomeIcons.envelope,size: 42.0,)),
                    SizedBox(width: 20.0,),
                    InkWell(
                        onTap: (){
                          _youtubekURL();
                        },
                        child: FaIcon(FontAwesomeIcons.youtube,size: 42.0,)),
                    SizedBox(width: 20.0,),
                    InkWell(
                        onTap: (){
                          _igURL();
                        },
                        child: FaIcon(FontAwesomeIcons.instagram,size: 42.0,)),
                  ],
                ),
                Divider(height: 10.0),
              ],
            ),
            )
          ],
      ),
    );
  }

  Widget FoodCardDetail() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(15.5),
                child: (Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "ຕິດຕໍ່ສອບຖາມຂໍ້ມູນເພີ່ມເຕີມໄດ້ທີ່",
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: mainfont),
                    ),
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
