import 'package:flutter/material.dart';
import 'home.dart';
import 'sign_up.dart';

class SignInPage extends StatefulWidget{
  @override
  _SignInPageState createState() => _SignInPageState();
}
class _SignInPageState extends State<SignInPage>{
  bool _togleVisibility =true;
  String emailString,passwordString;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
            Text("ເຂົ້າສູ່ລະບົບ",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
              Card(
              child: Padding(
                padding: const EdgeInsets.only(top:40.0,bottom: 20.0,right: 20.0,left: 20.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      EmailTextFiled(),
                      SizedBox(height: 10.0),
                      PasswordTextFiled(),
                      SizedBox(height: 16.0),
                      SignInButton(),
                      Text("ຫຼືເຂົ້າສູ່ລະບົບ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                      FbSignInButton(),
                      Divider(height: 20.0),
                      Row(
                        children: <Widget>[
                          Text("ຍັງຍໍທັນມີບັນຊີ ?"),
                          SizedBox(width: 10.0),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
                            },
                              child: Text("ລົງທະບຽນ",
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
                GestureDetector(
                    onTap: (){
//                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>SignUpPage()));
                    },
                    child: Text("ລືມລະຫັດຜ່ານ ?",style: TextStyle(fontSize: 14.0,color: Color(0xff9bca5d)),))
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget EmailTextFiled(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
        labelText: 'ອີເມວ',
        labelStyle: TextStyle(fontSize: 14.0,color: Color(0xff9bca5d)),
        prefixIcon: Icon(Icons.mail,color: Color(0xff9bca5d),),
        hintText: 'ອີເມວ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0),borderSide: BorderSide(color: Color(0xff9bca5d)),),
      ),
      validator: (String value) {
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'ກາລຸນາພິມ ອີເມວໃຫ້ຖືກຕ້ອງ. Ex: email@gmail.com';
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
          prefixIcon: Icon(Icons.lock,color: Color(0xff9bca5d),),
        hintText: 'ລະຫັດຜ່ານ',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0),borderSide: BorderSide(color: Color(0xff9bca5d)),),
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
  Widget SignInButton(){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {
          if(formkey.currentState.validate()){
            formkey.currentState.save();
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
          }
        },
        padding: EdgeInsets.only(right:12.0,left: 12,top: 16,bottom: 16),
        color: Color(0xff9bca5d),
        child: Text('ເຂົ້າສູ່ລະບົບ', style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
      ),
    );

  }
  Widget FbSignInButton(){
//        return InkWell(
//      onTap: (){
//        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
//      },
//      child: Container(
//          width: MediaQuery.of(context).size.width,
//          height: 50.0,
//          decoration: BoxDecoration(
//            color: Color(0xff9bca5d),
//            borderRadius: BorderRadius.circular(30.0),
//          ),
//          child:Center(
//            child:
//            Text("Facebook",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,color: Colors.white),),)
//      ),
//    );

        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
            onPressed: () {
            },
            padding: EdgeInsets.only(right:12.0,left: 12,top: 16,bottom: 16),
            color: Color(0xff3a559f),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Facebook', style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
              ],
            ),
//            child: Text('Facebook', style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
//            Icon(Icons.add),
          ),
        );
  }
}