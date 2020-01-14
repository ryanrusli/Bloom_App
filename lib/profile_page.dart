import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloom_app/learn_page.dart';
import 'package:bloom_app/personal_medical_information.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  BoxDecoration headerDecoration(){
    return BoxDecoration(
      color: Color(0xFF94ea94),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: BorderRadius.all( const Radius.circular(20.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.grey,
            width: 500,
            height: 175,
            child: Center(
              child: new Image.asset(
                'assets/profpic.png',
                color: Colors.white,
                height: 100,
                width: 100,
              ),
            ),
          ),
          Container(
//            color: Color(0xFFE5E5E5),
            decoration: headerDecoration(),
            margin: EdgeInsets.only(top: 15, bottom: 15, left:10, right: 10),
            width: 500,
            height: 50,
            child: Center(
              child: Text("Profile",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontSize: 18)),
            ),
          ),
          Container(
              width: 500,
              height: 75,
              color: Color(0xFFF2F2F2),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MedicalPage()));
                  },
                  child: Card(
                      color: Color(0xFFF2F2F2),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Medical History and Allergies",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18)),
                          ))))),
          Container(
              width: 500,
              height: 75,
              child: GestureDetector(
                  child: Card(
                      color: Color(0xFFF2F2F2),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Personal Info",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18)),
                          ))))),
          Container(
              width: 500,
              height: 75,
              child: GestureDetector(
                  child: Card(
                      color: Color(0xFFF2F2F2),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Dietary Preferences",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18)),
                          ))))),
          Container(
//              color: Color(0xFFE5E5E5),
              decoration: headerDecoration(),
              margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
              width: 500,
              height: 50,
              child: Center(
                child: Text("Account",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        fontSize: 18)),
              )),
          Container(
              width: 500,
              height: 75,
              child: GestureDetector(
                  child: Card(
                      color: Color(0xFFF2F2F2),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Account Settings",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18)),
                          ))))),
          Container(
              width: 500,
              height: 75,
              child: GestureDetector(
                  child: Card(
                      color: Color(0xFFF2F2F2),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Log out",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18)),
                          )))))
        ],
      ),
    );
  }
}
