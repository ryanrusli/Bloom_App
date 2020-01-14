import 'package:bloom_app/home_page.dart';
import 'package:bloom_app/planner_page.dart';
import 'package:bloom_app/profile_page.dart';
import 'package:bloom_app/learn_page.dart';
import 'package:bloom_app/meals_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//class Login extends StatefulWidget()

class MyApp extends StatelessWidget {
  @override
//  State<StatefulWidget> createState() {
//    return MyAppState();
//  }
  Widget build(BuildContext context) {
    return MaterialApp(home: MyBottomNavigation());
  }
}

class MyBottomNavigation extends StatefulWidget {
  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 1;
  final List<Widget> _children = [
    ProfilePage(),
    HomePage(),
    LearnPage(),
//    PlannerPage(),
    MealPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text("Learn"),
              backgroundColor: Colors.black,
            ),

//            BottomNavigationBarItem(
//              icon: Icon(Icons.calendar_today),
//              title: Text("Planner"),
//              backgroundColor: Colors.black,
//            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_dining),
              title: Text("Meals"),
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
        body: _children[_selectedIndex],
      ),
    );
  }
}
