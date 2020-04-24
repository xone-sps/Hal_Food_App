import 'package:flutter/material.dart';
import 'home.dart';
import '../screens/main_screen.dart';
import 'sigin_page.dart';

class Login extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<Login> {
//  final mainfont = 'boonhome';
//  bool _togleVisibility = true;
//  bool _togleConfirmVisibility = true;
//  String nameString, emailString, passwordString,phoneString;
//  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Faceboook login",
          style: TextStyle(fontFamily: 'boonhome', fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right:18.0,left: 18.0,top: 20.0,bottom: 8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  initialValue: 'xone',
                  decoration: InputDecoration(
                      labelText: 'Your name',
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  initialValue: '020 52202014',
                  decoration: InputDecoration(
                      labelText: 'Phone number',
                      border: OutlineInputBorder()
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
//                SignInButton(),
              ],
            ),
          ),
        ),
      ),

    );
  }

//  Widget UserNameTextFiled() {
//    return TextFormField(
//      style: TextStyle(fontFamily: 'boonhome'),
//      keyboardType: TextInputType.emailAddress,
//      autofocus: false,
//      decoration: InputDecoration(
//        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
//        labelText: 'ຊື່ ແລະ ນາມສະກຸນ',
//        hintText: 'ຊື່ ແລະ ນາມສະກຸນ',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
//        prefixIcon: Icon(Icons.person, color: Color(0xff9bca5d)),
//      ),
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'ກາລຸນາປ້ອນຊື່';
//        } else {
//          return null;
//        }
//      },
//      onSaved: (String value) {
//        nameString = value.trim();
//      },
//    );
//  }
//
//  Widget PhoneTextFiled() {
//    return TextFormField(
//      style: TextStyle(fontFamily: 'boonhome'),
//      keyboardType: TextInputType.phone,
//      autofocus: false,
//      decoration: InputDecoration(
//        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
//        labelText: 'ເບີໂທລະສັບ',
//        hintText: 'ເບີໂທລະສັບ',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
//        prefixIcon: Icon(Icons.phone, color: Color(0xff9bca5d)),
//      ),
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'ກາລຸນາປ້ອນເບີໂທລະສັບ';
//        } else {
//          return null;
//        }
//      },
//      onSaved: (String value) {
//        phoneString = value.trim();
//      },
//    );
//  }
//
//  Widget EmailTextFiled() {
//    return TextFormField(
//      style: TextStyle(fontFamily: 'boonhome'),
//      keyboardType: TextInputType.emailAddress,
//      autofocus: false,
//      decoration: InputDecoration(
//        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
//        labelText: 'ອີເມວ',
//        hintText: 'ອີເມວ',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
//        prefixIcon: Icon(Icons.email, color: Color(0xff9bca5d)),
//      ),
//      validator: (String value) {
//        if (!((value.contains('@')) && (value.contains('.')))) {
//          return 'ກາລຸນາພິມອີເມວໃຫ້ຖືກຕ້ອງ. Ex: email@gmail.com';
//        } else {
//          return null;
//        }
//      },
//      onSaved: (String value) {
//        emailString = value.trim();
//      },
//    );
//  }
//
//  Widget PasswordTextFiled() {
//    return TextFormField(
//      style: TextStyle(fontFamily: 'boonhome'),
//      autofocus: false,
//      obscureText: _togleVisibility,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
//          labelText: 'ລະຫັດຜ່ານ',
//          hintText: 'ລະຫັດຜ່ານ',
//          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
//          prefixIcon: Icon(
//            Icons.lock,
//            color: Color(0xff9bca5d),
//          ),
//          suffixIcon: IconButton(
//            onPressed: () {
//              setState(() {
//                _togleVisibility = !_togleVisibility;
//              });
//            },
//            icon: _togleVisibility
//                ? Icon(
//              Icons.visibility_off,
//              color: Color(0xff9bca5d),
//            )
//                : Icon(
//              Icons.visibility,
//              color: Color(0xff9bca5d),
//            ),
//          )),
//      validator: (String value) {
//        if (value.length < 6) {
//          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກ່ວາ 6 ໂຕ';
//        } else {
//          return null;
//        }
//      },
//      onSaved: (String value) {
//        passwordString = value.trim();
//      },
//    );
//  }
//
//  Widget PasswordConfirmTextFiled() {
//    return TextFormField(
//      style: TextStyle(fontFamily: 'boonhome'),
//      autofocus: false,
//      obscureText: _togleConfirmVisibility,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
//          labelText: 'ຢືນຢັນລະຫັດຜ່ານ',
//          hintText: 'ຢືນຢັນລະຫັດຜ່ານ',
//          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
//          prefixIcon: Icon(Icons.lock, color: Color(0xff9bca5d)),
//          suffixIcon: IconButton(
//            onPressed: () {
//              setState(() {
//                _togleConfirmVisibility = !_togleConfirmVisibility;
//              });
//            },
//            icon: _togleConfirmVisibility
//                ? Icon(
//              Icons.visibility_off,
//              color: Color(0xff9bca5d),
//            )
//                : Icon(
//              Icons.visibility,
//              color: Color(0xff9bca5d),
//            ),
//          )),
//      validator: (String value) {
//        if (value.length < 6) {
//          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກ່ວາ 6 ໂຕ';
//        } else {
//          return null;
//        }
//      },
//      onSaved: (String value) {
//        passwordString = value.trim();
//      },
//    );
//  }
//
//  Widget SignInButton() {
//    return Container(
//        width: MediaQuery.of(context).size.width,
//    padding: EdgeInsets.symmetric(vertical: 16.0),
//    child: RaisedButton(
//    shape: RoundedRectangleBorder(
//    borderRadius: BorderRadius.circular(6),
//    ),
//    onPressed: () {
////          if (formkey.currentState.validate()) {
////            formkey.currentState.save();
////            Navigator.of(context).push(
////                MaterialPageRoute(builder: (BuildContext context) => Home()));
////          }
//    },
//    padding: EdgeInsets.only(right: 12.0, left: 12, top: 16, bottom: 16),
//    color: Color(0xff9bca5d),
//    child: Text('ລົງທະບຽນ',
//    style: TextStyle(
//    color: Colors.white,
//    fontSize: 18.0,
//    fontWeight: FontWeight.bold,
//    fontFamily: 'boonhome')),
//    )
//    );
//    }
}