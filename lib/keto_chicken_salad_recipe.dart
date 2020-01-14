import 'package:flutter/material.dart';

class KCRecipe extends StatefulWidget {
  @override
  _KCRecipeState createState() => _KCRecipeState();
}

class _KCRecipeState extends State<KCRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFe5e5e5),
        body: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 95,
            child: Center(
              child: Text(
                "Keto Chicken Salad Recipe",
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
              "Reference: Makinze Gore - Delish, 13 January 2020",
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
                  child: Image.asset("assets/KCsalad.jpg",
                      width: 311.5, height: 175))),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "(Image: © Emily Hlavac Green )",
              style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 120,
            child: Text(
              "YIELDS: 4 - 6 SERVINGS\nPREP TIME: 20 MINS\nTOTAL TIME: 30 MINS\n\nIngredients",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 250,
            child: Text(
              "- 1/2 c. mayonnaise\n- 1 tbsp. Dijon mustard\n- 1 tbsp. red wine vinegar\n- 1 small shallot, finely chopped\n- 1 stalk celery, thinly sliced\n- 1 tsp. dried oregano\n- Kosher salt\n- Freshly ground black pepper\n- Pinch crushed red pepper flakes\n- 3 c. shredded cooked chicken\n- 4 strips bacon, cooked and crumbled\n- 1 avocado, diced\n- Butterhead lettuce, for serving",
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 500,
            height: 20,
            child: Text(
              "Directions",
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
              "1. In a medium bowl, combine mayonnaise, mustard, red wine vinegar, shallot, and celery. Season with oregano, salt, pepper, and a pinch of red pepper flakes.\n\n 2.Fold in chicken, bacon, and avocado.\n\n 3.Serve in lettuce cups",
              style: TextStyle(fontSize: 13, fontFamily: "Roboto"),
            ),
          ),
        ]));
  }
}
