import 'package:flutter/material.dart';

class AQIData extends StatefulWidget {
  @override
  _AQIDataState createState() => _AQIDataState();
}

class _AQIDataState extends State<AQIData> {
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
                      "Air Quality Index Map",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))),
          ],
        ));
  }
}
