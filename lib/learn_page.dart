import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloom_app/personal_medical_information.dart';
import 'package:bloom_app/meet_the_protein_article.dart';
import 'package:bloom_app/undertanding_nutrients_article.dart';

class LearnPage extends StatefulWidget {
  @override
  _LearnPageState createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  BoxDecoration myHeaderBoxDecoration() {
    return BoxDecoration(
      color: Color(0xFF94ea94),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(20.0),
          topRight: const Radius.circular(20.0)),
    );
  }

  BoxDecoration myInnerContentBoxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ));
  }

  BoxDecoration myOuterContentBoxDecoration() {
    return BoxDecoration(
//      color: Color(0xFF000034),
      color: Colors.black,
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(20.0),
          bottomRight: const Radius.circular(20.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.black54,
          blurRadius: 20.0, // has the effect of softening the shadow
          spreadRadius: 5.0, // has the effect of extending the shadow
          offset: Offset(
            2.0, // horizontal, move right 10
            2.0, // vertical, move down 10
          ),
        )
      ],
    );
  }

  BoxDecoration headerDecoration() {
    return BoxDecoration(
      color: Colors.green,
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: BorderRadius.all(const Radius.circular(20.0)),
    );
  }

  BoxDecoration textBoxDecoration() {
    return BoxDecoration(
      color: Color(0xFFEFEFEF),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      borderRadius: BorderRadius.all(const Radius.circular(20.0)),
    );
  }

  BoxDecoration bookPicDecor() {
    return BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15),
            decoration: headerDecoration(),
            width: 500,
            height: 75,
            child: Center(
              child: Text(
                "Learn",
                style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Container(
              width: 500,
              margin: EdgeInsets.only(top: 15),
              height: 150,
              decoration: bookPicDecor(),
              child: Center(
                child: Image.asset(
                  "assets/learnBook.png",
                  width: 150,
                  height: 150,
                ),
              )),
          Container(
              width: 500,
              height: 70,
              margin: EdgeInsets.only(top: 5, left: 5, right: 5),
              decoration: textBoxDecoration(),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Text(
                    "Discover new pieces of information regarding important nutritional data you can apply on a meal-to-meal basis.",
                    style: TextStyle(
                        fontFamily: "Roboto-Light",
                        fontSize: 14,
                        fontStyle: FontStyle.italic),
                  ))),
          Container(
              width: 500,
              height: 75,
              color: Color(0x0FFEFEFEF),
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: EdgeInsets.only(top: 5, left: 5),
                child: Center(
                    child: Text(
                  "Articles",
                  style: TextStyle(fontSize: 18, fontFamily: "Roboto"),
                )),
              )),
          Container(
            decoration: myHeaderBoxDecoration(),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
//        color: Color(0xFF94ea94),
            width: 500,
            height: 50,
            child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Understanding Nutrients",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto-Light',
//                  fontStyle: FontStyle.italic,
//                  fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ))),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: myInnerContentBoxDecoration(),
              width: 500,
              height: 250,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NutrientsArticle()));
                  },
                  child: new Image.asset(
                    "assets/nutrients.png",
                    width: 100,
                    height: 100,
                  ))),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: 500,
              height: 50,
              decoration: myOuterContentBoxDecoration(),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NutrientsArticle()));
                },
                child: Center(
                    child: Text(
                  "Read Article",
                  style: TextStyle(
                      fontFamily: "Roboto-Light",
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                )),
              )),
          Container(
            decoration: myHeaderBoxDecoration(),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            width: 500,
            height: 50,
            child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Meet the Protein",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto-Light',
                      fontSize: 18,
                    ))),
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: myInnerContentBoxDecoration(),
              width: 500,
              height: 250,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProteinArticle()));
                  },
                  child: new Image.asset(
                    "assets/theprotein.jpg",
                    width: 100,
                    height: 100,
                  ))),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: 500,
              height: 50,
              decoration: myOuterContentBoxDecoration(),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProteinArticle()));
                },
                child: Center(
                    child: Text(
                  "Read Article",
                  style: TextStyle(
                      fontFamily: "Roboto-Light",
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                )),
              )),
          Container(
            height: 50,
          ),
        ]));
  }
}
