import 'package:flutter/material.dart';
import 'home.dart';
import '../screens/main_screen.dart';
import 'sigin_page.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage>{
  bool _togleVisibility =true;
  bool _togleConfirmVisibility =true;
  String nameString,emailString,passwordString;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
          padding: EdgeInsets.only(right: 10.0,left: 10.0,top: 30.0),
          children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/hal_food.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(48.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(2.0,2.0)
                        )
                      ]
                  ),
                ),
                Text("ລົງທະບຽນ",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
//                SizedBox(height: 10.0),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top:40.0,bottom: 20.0,right: 20.0,left: 20.0),
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
                          Divider(height: 20.0),
                          Row(
                            children: <Widget>[
                              Text("ມີບັນຊີແລ້ວ ?"),
                              SizedBox(width: 10.0),
                              InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignInPage()));
                                  },
                                  child: Text("ເຂົ້າສູ່ລະບົບ",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff9bca5d),fontSize: 16.0),)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                        onTap: (){},
                        child: Text("ລືມລະຫັດຜ່ານ ?",style: TextStyle(fontSize: 14.0,color: Color(0xff9bca5d)),))
                  ],
                )
              ],
          ),
        ],
      ),
    );
  }
  Widget UserNameTextFiled(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'ຊື່',
        hintText: 'ຊື່',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        prefixIcon: Icon(Icons.person,color: Color(0xff9bca5d)),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'ກາລຸນາປ້ອນຊື່';
        } else {
          return null;
        }
      },onSaved: (String value){
      nameString = value.trim();
    },
    );
  }
  Widget PhoneTextFiled(){
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'ເບີໂທລະສັບ',
        hintText: 'ເບີໂທລະສັບ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        prefixIcon: Icon(Icons.phone,color: Color(0xff9bca5d)),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'ກາລຸນາປ້ອນເບີໂທລະສັບ';
        } else {
          return null;
        }
      },onSaved: (String value){
      nameString = value.trim();
    },
    );
  }
  Widget EmailTextFiled(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'ອີເມວ',
        hintText: 'ອີເມວ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        prefixIcon: Icon(Icons.email,color: Color(0xff9bca5d)),
      ),
      validator: (String value) {
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'ກາລຸນາພິມອີເມວໃຫ້ຖືກຕ້ອງ. Ex: email@gmail.com';
        } else {
          return null;
        }
      },onSaved: (String value){
      emailString = value.trim();
    },
    );
  }
  Widget PasswordTextFiled(){
    return TextFormField(
      autofocus: false,
      obscureText: _togleVisibility,
      decoration: InputDecoration(
        labelText: 'ລະຫັດຜ່ານ',
          hintText: 'ລະຫັດຜ່ານ',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
          prefixIcon: Icon(Icons.lock,color: Color(0xff9bca5d),),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _togleVisibility = !_togleVisibility;
              });
            },
            icon: _togleVisibility ? Icon(Icons.visibility_off,color: Color(0xff9bca5d),): Icon(Icons.visibility,color: Color(0xff9bca5d),),
          )
      ),
      validator: (String value){
        if(value.length < 6){
          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກ່ວາ 6 ໂຕ';
        }else {
          return null;
        }
      },
      onSaved: (String value){
        passwordString = value.trim();
      },
    );
  }
  Widget PasswordConfirmTextFiled(){
    return TextFormField(
      autofocus: false,
      obscureText: _togleConfirmVisibility,
      decoration: InputDecoration(
        labelText: 'ຢືນຢັນລະຫັດຜ່ານ',
          hintText: 'ຢືນຢັນລະຫັດຜ່ານ',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
          prefixIcon: Icon(Icons.lock,color: Color(0xff9bca5d)),
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                _togleConfirmVisibility = !_togleConfirmVisibility;
              });
            },
            icon: _togleConfirmVisibility ? Icon(Icons.visibility_off,color: Color(0xff9bca5d),): Icon(Icons.visibility,color: Color(0xff9bca5d),),
          )
      ),
      validator: (String value){
        if(value.length < 6){
          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານຫຼາຍກ່ວາ 6 ໂຕ';
        }else {
          return null;
        }
      },
      onSaved: (String value){
        passwordString = value.trim();
      },
    );
  }
  Widget SignInButton(){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        onPressed: () {
          if(formkey.currentState.validate()){
            formkey.currentState.save();
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Home()));
          }
        },
        padding: EdgeInsets.only(right:12.0,left: 12,top: 16,bottom: 16),
        color: Color(0xff9bca5d),
        child: Text('ລົງທະບຽນ', style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
      ),
    );

  }
}