import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hal_food_app/main.dart';
import '../screens/main_screen.dart';
import 'sign_up.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _togleVisibility = true;
  final mainfont = 'boonhome';
  String phoneString, passwordString;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "ເຂົ້າສູ່ລະບົບ",
          style: TextStyle(fontFamily: mainfont, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/hal_food.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff9bca5d),
                        blurRadius: 1.0,
                        offset: Offset(1.0, 1.0))
                  ]),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "HAL Food",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: mainfont),
            ),
            Text(
              "ເພາະທຸກຄຳມີຄວາມໝາຍ",
              style: TextStyle(fontSize: 14.0, fontFamily: mainfont),
            ),
//            SizedBox(height: 10.0),
            Divider(color: Color(0xff9bca5d),),
//            Card(
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 20.0, right: 20.0, left: 20.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    PhoneTextFiled(),
                    SizedBox(height: 10.0),
                    PasswordTextFiled(),
                    SizedBox(height: 16.0),
                    SignInButton(),
                    Text(
                      "ຫຼື ເຂົ້າສູ່ລະບົບຜ່ານ",
                      style: TextStyle(fontSize: 16.0, fontFamily: mainfont),
                    ),
                    FbSignInButton(),
                    Divider(color: Color(0xff9bca5d),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "ຍັງບໍມີບັນຊີ ?",
                          style: TextStyle(fontFamily: mainfont),
                        ),
                        SizedBox(width: 10.0),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SignUpPage()));
                            },
                            child: Text(
                              "ລົງທະບຽນ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9bca5d),
                                  fontSize: 16.0,
                                  fontFamily: mainfont),
                            )),
                            SizedBox(width: 80.0,),
                            GestureDetector(
                                onTap: () {
//                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
                                },
                                child: Text(
                                  "ລືມລະຫັດຜ່ານ ?",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Color(0xff9bca5d),
                                      fontFamily: mainfont),
                                ))
                      ],
                    )
                  ],
                ),
              ),
            ),
//            ),
          ],
        ),
      ),
    );
  }

  Widget PhoneTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: mainfont),
      keyboardType: TextInputType.phone,
      autofocus: true,
      decoration: InputDecoration(
        labelText: 'ເບີໂທ',
        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
        prefixIcon: Icon(
          Icons.phone,
          color: Color(0xff9bca5d),
        ),
        hintText: 'ເບີໂທ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: Color(0xff9bca5d)),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'ກາລຸນາປ້ອນເບີໂທລະສັບ';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        phoneString = value.trim();
      },
    );
  }

  Widget PasswordTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: mainfont),
      autofocus: false,
      obscureText: _togleVisibility,
      decoration: InputDecoration(
          labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
          labelText: 'ລະຫັດຜ່ານ',
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xff9bca5d),
          ),
          hintText: 'ລະຫັດຜ່ານ',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(color: Color(0xff9bca5d)),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _togleVisibility = !_togleVisibility;
              });
            },
            icon: _togleVisibility
                ? Icon(
                    Icons.visibility_off,
                    color: Color(0xff9bca5d),
                  )
                : Icon(
                    Icons.visibility,
                    color: Color(0xff9bca5d),
                  ),
          )),
      validator: (String value) {
        if (value.length < 6) {
          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກ່ວາ 6 ໂຕ';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        passwordString = value.trim();
      },
    );
  }

  Widget SignInButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {
          if (formkey.currentState.validate()) {
            formkey.currentState.save();
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => Home()));
          }
        },
        padding: EdgeInsets.only(right: 12.0, left: 12, top: 16, bottom: 16),
        color: Color(0xff9bca5d),
        child: Text('ເຂົ້າສູ່ລະບົບ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: mainfont)),
      ),
    );
  }

  Widget FbSignInButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {},
        padding: EdgeInsets.only(right: 12.0, left: 12, top: 12, bottom: 12),
        color: Color(0xff3a559f),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.facebookSquare,
              color: Colors.white,
              size: 32.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Text('Facebook',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
