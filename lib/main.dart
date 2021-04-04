import 'package:flutter/material.dart';
import 'package:progressive_web_app/CalendarSpace/src/CalendarSection.dart';
import 'package:progressive_web_app/Dashboard/Dashboard.dart';
import 'package:progressive_web_app/NavigationBar/NavigationBar.dart';

import 'CalendarSpace/CalendarSpace.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          NavigationBar(),
          Dashboard(),
          CalenderSpace(),
          ClipRRect(
            child: Image.asset(
              'assets/image.png',
              height: 300.0,
              width: 400.0,
            ),
          ),
        ],
      ),
    ));
  }
}
