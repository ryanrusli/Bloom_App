import 'package:flutter/material.dart';

class SmartwatchData extends StatefulWidget {
  @override
  _SmartwatchDataState createState() => _SmartwatchDataState();
}

class _SmartwatchDataState extends State<SmartwatchData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
            width: 500,
            height: 100,
            child: Center(
                child: Text(
              "Data Tracker",
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ))),
        Container(
            width: 500,
            height: 500,
            child: Center(
              child: Image.asset("assets/stats.png"),
            )),
      ],
    ));
  }
}
