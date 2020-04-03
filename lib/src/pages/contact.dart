import 'package:flutter/material.dart';
import 'order_page.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Contact extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<Contact> {
  final mainColor = (Color(0xff9bca5d));
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

//  Completer<GoogleMapController> _controller = Completer();
//  static const LatLng _center = const LatLng(45.521563, -122.677433);
//  final Set<Marker>_markers = {};
//  LatLng _lastMapPostision = _center;
//  MapType _currentMapType = MapType.normal;
//
//  _onMapCreated(GoogleMapController controller){
//    _controller.complete(controller);
//  }
//  _onCameraMove(CameraPosition position){
//    _lastMapPostision = position.target;
//  }
  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ຕິດຕໍ່ພວກເຮົາ",
          style: TextStyle(color: Colors.white),
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
//            Column(
//            children: <Widget>[
//              GoogleMap(
//                onMapCreated: _onMapCreated,
//                initialCameraPosition: CameraPosition(
//                  target: _center,
//                  zoom: 11.0,
//                ),
//              ),
//            ],
//            ),
          FoodCardDetail(),
          InkWell(
            onTap: () {
              print("hello");
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15.0, right: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.phone),
                  Text("Call Center"),
                  Text(
                    "+8562052202015",
                    style: TextStyle(color: mainColor, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 20.0),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15.0, right: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.phone_iphone),
                  Text("WhatsApp"),
                  Text(
                    "+8562052202015",
                    style: TextStyle(color: mainColor, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 20.0),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 15.0, right: 10.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.description),
                  Text("Facebook"),
                  Text(
                    "www.facebook.com/hal-food",
                    style: TextStyle(color: mainColor, fontSize: 16.0),
                  ),
                ],
              ),
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
                          fontSize: 16.0, fontWeight: FontWeight.bold),
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
