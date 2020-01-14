import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloom_app/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MedicalPage extends StatefulWidget {
  @override
  _MedicalPageState createState() => _MedicalPageState();
}

class _MedicalPageState extends State<MedicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Container(
        width: 500,
        height: 175,
        child: Center(),
      ),
      Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: DropdownButton<String>(
                items: <String>['Egg', 'Fish', 'Peanuts', "Cow's Milk"]
                    .map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
              ))),
    ]));
  }
}
