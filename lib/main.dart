import 'package:flutter/material.dart';
import 'package:ui/screens/Splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'job finder',
        home: Splashscreen(),
        theme: ThemeData(
          primaryColor: Color(0xff5f5fff),
          accentColor: Color(0xffb70d2),
        textTheme: TextTheme(
          headline1: TextStyle(
        fontSize: 36.0,
      fontWeight: FontWeight.bold,
      color: Color(0xff030047)
    ),
       headline2:    TextStyle(
         fontSize: 36.0,
         fontWeight: FontWeight.bold,
         color: Color(0xff5f5fff),
       )
    )
    ),
    );
  }
}