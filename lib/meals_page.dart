import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bloom_app/keto_chicken_salad_recipe.dart';

class MealPage extends StatefulWidget {
  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  _launchMKZomato() async {
    const url = 'https://www.zomato.com/jakarta/mars-kitchen-fatmawati/menu';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchMnOZomato() async {
    const url = 'https://www.zomato.com/jakarta/maple-oak-menteng/menu';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                "Meals",
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
                  "assets/siapMakan.png",
                  width: 150,
                  height: 100,
                ),
              )),
          Container(
              width: 500,
              height: 65,
              margin: EdgeInsets.only(top: 5, left: 5, right: 5),
              decoration: textBoxDecoration(),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Text(
                    "From hand picked restaurant items to homemade recipes, there are plenty of healthy meal"
                    " options you can choose!",
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
                  "Restaurant Item Selections",
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
                child: Text("Salmon Salad @ Mars Kithcen",
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
                  onTap: _launchMKZomato,
                  child: new Image.asset(
                    "assets/MKsalmonsalad.jpg",
                    width: 100,
                    height: 100,
                  ))),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: 500,
              height: 50,
              decoration: myOuterContentBoxDecoration(),
              child: GestureDetector(
                onTap: _launchMKZomato,
                child: Center(
                    child: Text(
                  "Rp 57.000",
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
                child: Text("Egg Benedict @ Maple & Oak",
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
                  onTap: _launchMnOZomato,
                  child: new Image.asset(
                    "assets/MnOeggsBen.jpg",
                    width: 100,
                    height: 100,
                  ))),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              width: 500,
              height: 50,
              decoration: myOuterContentBoxDecoration(),
              child: GestureDetector(
                onTap: _launchMnOZomato,
                child: Center(
                    child: Text(
                  "Rp 78.000",
                  style: TextStyle(
                      fontFamily: "Roboto-Light",
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                )),
              )),
          Container(
              width: 500,
              height: 75,
              color: Color(0x0FFEFEFEF),
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding: EdgeInsets.only(top: 5, left: 5),
                child: Center(
                    child: Text(
                  "Recipes",
                  style: TextStyle(fontSize: 18, fontFamily: "Roboto"),
                )),
              )),
          Container(
            decoration: myHeaderBoxDecoration(),
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            width: 500,
            height: 50,
            child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Keto Chicken Salad",
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => KCRecipe()));
                  },
                  child: new Image.asset(
                    "assets/KCsalad.jpg",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KCRecipe()));
                },
                child: Center(
                    child: Text(
                  "View Recipe",
                  style: TextStyle(
                      fontFamily: "Roboto-Light",
                      fontSize: 18,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                )),
              )),
          Container(height: 50)
        ]));
  }
}
