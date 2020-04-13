import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextStyle textstyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  final InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right:8.0,left: 8.0,top: 20.0,bottom: 8.0),
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
                UpdateProfile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget UpdateProfile(){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: MaterialButton(
        height: 60.0,
        child: Text('ແກ້ໄຂ',style: TextStyle(fontSize: 16.0,fontFamily: 'boonhome',color: Colors.white),),
        color: Color(0xff9bca5d),
        onPressed: () {
          //Do something
        },
      ),
    );
  }
}