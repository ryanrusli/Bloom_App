import 'package:flutter/material.dart';

class ProteinArticle extends StatefulWidget {
  @override
  _ProteinArticleState createState() => _ProteinArticleState();
}

class _ProteinArticleState extends State<ProteinArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        body: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 85,
            child: Center(
              child: Text(
                "Meet the Protein",
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
              "Reference: Jessie Szalay - Live Science, 10 December 2015",
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
                  child: Image.asset("assets/proteinParty.jpg",
                      width: 311.5, height: 175))),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "(Image: © Africa Studio | Shutterstock )",
              style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "What is Protein?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 400,
            child: Text(
              "Protein is a macronutrient that is essential to building muscle mass. It is commonly found in animal products,"
                  " though is also present in other sources, such as nuts and legumes. \n\nChemically, protein is composed of "
                  "amino acids, which are organic compounds made of carbon, hydrogen, nitrogen, oxygen or sulfur. \n\nAmino "
                  "acids are the building blocks of proteins, and proteins are the building blocks of muscle mass, "
                  "according to the National Institutes of Health (NIH). "

                  '\n\n“When protein is broken down in the body it helps to fuel muscle mass, which helps metabolism," said Jessica Crandall,'
                  ' a registered dietitian nutritionist, certified diabetes educator and national spokesperson for the'
                  ' Academy of Nutrition and Dietetics. \n\n"It also helps the immune system stay strong. It helps you stay'
                  ' full. A lot of research has shown that protein has satiety effects.” ',
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "High-protein foods",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 500,
            child: Text(
              "According to Matthew Kadey, a registered dietitian writing for Bodybuilding.com, some high-protein meats include:\n\nTop or bottom round steak (23 grams of protein per 3-ounce serving)\nLean ground beef (18 grams per 3-ounce serving)\nPork chops (26 grams per 3-ounce serving)\nSkinless chicken breast (24 grams per 3-ounce serving)\nTurkey breast (24 grams per 3-ounce serving)\nSockeye salmon (23 grams per 3-ounce serving)\nYellowfin tuna (25 grams per 3-ounce serving)\n\nHigh-protein dairy foods include:\nGreek yogurt (23 grams per 8-ounce serving)\nCottage cheese (14 grams per half-cup serving)\nEggs (6 grams per large egg)\n2 percent milk (8 grams per cup)\n\nSome other high-protein foods are:\nSome canned foods, like sardines, anchovies and tuna average around 22 grams of protein per serving\nNavy beans (20 grams per cup)\nLentils (13 grams per quarter-cup)\nPeanut butter (8 grams per 2 tablespoons)\nMixed nuts (6 grams per 2-ounce serving)\nQuinoa (8 grams per 1-cup serving)\nEdamame (8 grams per half-cup serving)\nSoba noodles (12 grams per 3-ounce serving)",
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
        ]));
  }
}
