import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:bloom_app/smartwatch_data.dart';
import 'package:bloom_app/aqimap_data.dart';

class Calender extends EventInterface {
  @override
  DateTime getDate() {
    // TODO: implement getDate
    return null;
  }

  @override
  Widget getDot() {
    // TODO: implement getDot
    return null;
  }

  @override
  Widget getIcon() {
    // TODO: implement getIcon
    return null;
  }

  @override
  String getTitle() {
    // TODO: implement getTitle
    return null;
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _currentDate;
  EventList<Calender> _markedDateMap;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          Container(
            width: 500,
            height: 125,
            child: new Image.asset(
              'assets/bloomLogo.jpg',
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: CalendarCarousel<Calender>(
                onDayPressed: (DateTime date, List<Calender> events) {
                  this.setState(() => _currentDate = date);
                },
                thisMonthDayBorderColor: Colors.grey,
                customDayBuilder: (
                  bool isSelectable,
                  int index,
                  bool isSelectedDay,
                  bool isToday,
                  bool isPrevMonthDay,
                  TextStyle textStyle,
                  bool isNextMonthDay,
                  bool isThisMonthDay,
                  DateTime day,
                ) {
                  if (day.day == 15) {
                    return Center(
                      child: Icon(Icons.check_circle),
                    );
                  } else {
                    return null;
                  }
                },
                weekFormat: false,
                markedDatesMap: _markedDateMap,
                height: 420.0,
                selectedDateTime: _currentDate,
                daysHaveCircularBorder: false,
              )),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15, top: 15),
            decoration: headerDecoration(),
            width: 500,
            height: 75,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SmartwatchData()));
                },
                child: Center(
                  child: Text(
                    "View Smartwatch Data",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )),
          ),
          Container(
              margin: EdgeInsets.only(right: 15, left: 15, top: 15),
              decoration: headerDecoration(),
              width: 500,
              height: 75,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AQIData()));
                },
                child: Center(
                  child: Text(
                    "View Air Quality Map",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              )),
        ]));
  }
}
