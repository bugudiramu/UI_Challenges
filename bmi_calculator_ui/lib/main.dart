import 'package:bmi_calculator_ui/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          button:
              TextStyle(backgroundColor: Colors.blueGrey, color: Colors.white),
          headline: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 40.0),
          title: TextStyle(
              fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
    );
  }
}
