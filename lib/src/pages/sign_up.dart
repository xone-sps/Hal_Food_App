import 'package:flutter/material.dart';
import 'home.dart';
import '../screens/main_screen.dart';
import 'sigin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final mainfont = 'boonhome';
  bool _togleVisibility = true;
  bool _togleConfirmVisibility = true;
  String nameString, emailString, passwordString,phoneString;
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
          "ລົງທະບຽນ",
          style: TextStyle(fontFamily: 'boonhome', fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Center(
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
//              Card(
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, right: 20.0, left: 20.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        UserNameTextFiled(),
                        SizedBox(height: 15.0),
                        PhoneTextFiled(),
                        SizedBox(height: 15.0),
                        EmailTextFiled(),
                        SizedBox(height: 15.0),
                        PasswordTextFiled(),
                        SizedBox(height: 15.0),
                        PasswordConfirmTextFiled(),
                        SizedBox(height: 16.0),
                        SignInButton(),
                        Divider(color: Color(0xff9bca5d),),
                        Row(
                          children: <Widget>[
                            Text("ມີບັນຊີແລ້ວ ?"),
                            SizedBox(width: 10.0),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SignInPage()));
                                },
                                child: Text(
                                  "ເຂົ້າສູ່ລະບົບ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9bca5d),
                                      fontSize: 16.0),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
//              ),
              ],
            ),
          ),
//        padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),

        ),
      ),
    );
  }

  Widget UserNameTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'boonhome'),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
        labelText: 'ຊື່ ແລະ ນາມສະກຸນ',
        hintText: 'ຊື່ ແລະ ນາມສະກຸນ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        prefixIcon: Icon(Icons.person, color: Color(0xff9bca5d)),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'ກາລຸນາປ້ອນຊື່';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        nameString = value.trim();
      },
    );
  }

  Widget PhoneTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'boonhome'),
      keyboardType: TextInputType.phone,
      autofocus: false,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
        labelText: 'ເບີໂທລະສັບ',
        hintText: 'ເບີໂທລະສັບ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        prefixIcon: Icon(Icons.phone, color: Color(0xff9bca5d)),
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

  Widget EmailTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'boonhome'),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
        labelText: 'ອີເມວ',
        hintText: 'ອີເມວ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        prefixIcon: Icon(Icons.email, color: Color(0xff9bca5d)),
      ),
      validator: (String value) {
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'ກາລຸນາພິມອີເມວໃຫ້ຖືກຕ້ອງ. Ex: email@gmail.com';
        } else {
          return null;
        }
      },
      onSaved: (String value) {
        emailString = value.trim();
      },
    );
  }

  Widget PasswordTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'boonhome'),
      autofocus: false,
      obscureText: _togleVisibility,
      decoration: InputDecoration(
          labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
          labelText: 'ລະຫັດຜ່ານ',
          hintText: 'ລະຫັດຜ່ານ',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
          prefixIcon: Icon(
            Icons.lock,
            color: Color(0xff9bca5d),
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

  Widget PasswordConfirmTextFiled() {
    return TextFormField(
      style: TextStyle(fontFamily: 'boonhome'),
      autofocus: false,
      obscureText: _togleConfirmVisibility,
      decoration: InputDecoration(
          labelStyle: TextStyle(fontSize: 18.0, color: Color(0xff9bca5d)),
          labelText: 'ຢືນຢັນລະຫັດຜ່ານ',
          hintText: 'ຢືນຢັນລະຫັດຜ່ານ',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
          prefixIcon: Icon(Icons.lock, color: Color(0xff9bca5d)),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _togleConfirmVisibility = !_togleConfirmVisibility;
              });
            },
            icon: _togleConfirmVisibility
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
          borderRadius: BorderRadius.circular(6),
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
        child: Text('ລົງທະບຽນ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'boonhome')),
      ),
    );
  }
}
