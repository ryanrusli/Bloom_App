import 'package:flutter/material.dart';

class NutrientsArticle extends StatefulWidget {
  @override
  _NutrientsArticleState createState() => _NutrientsArticleState();
}

class _NutrientsArticleState extends State<NutrientsArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe5e5e5),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 85,
            child: Center(
              child: Text(
                "Understanding Nutrients",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              ),
            ),
          ),
          Container(
            width: 500,
            height: 2,
            margin: EdgeInsets.only(top: 10),
            color: Colors.black54,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "Reference: Medical News Today, 1 September 2017",
              style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
              width: 500,
              height: 175,
              child: Center(
                  child: Image.asset("assets/nutriArt1.jpg",
                      width: 311.5, height: 175))),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "What are nutrients and what do they do?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 110,
            child: Text(
              "Nutrients are a supply of materials required by your body cells to stay alive. The human body requires seven major"
                  "types of nutrients, all of which play their respective roles. There are 2 main types of nutrients : \n"
                  "- Macronutrients, which are needed in large quantities\n- Micronutrients, which are needed in smaller quantities.",
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "Types of Macronutrients",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 140,
            child: Text(
              "Macronutrients that provide energy : \n- Carbohydrates - 4 kcal per gram\n- Proteins - 4 kcal per gram"
                  "\n- Fats - 9 kcal per gram\n\nMacronutrients that do not provide energy :\n- Water\n- Fiber",
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "Types of Micronutrients",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 300,
            child: Text(
              "- Pottasium, essential in regulating ATP(an important carrier of energy in body cells).\n"
                  "\n- Chloride, produces stomach acid, important in the transport of molecules between cells and vital for proper funcitoning of nerves.\n"
                  "\n- Sodium, assists Potassium in regulating ATP and is important for nerve functions and regulating body fluids.\n"
                  "\n- Calcium, important for muscles, heart and digestive health. It also build bone and helps in the synthesis of blood cells.\n"
                  "\n- Phosphorus, important for DNA structure, acts as an ATP, a key component in the cell membrane and strengthens bones.",
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
        ],
      ),
    );
  }
}
