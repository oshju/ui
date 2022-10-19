import 'package:flutter/material.dart';
import 'package:ui/animations/reactnative.dart';
import 'package:ui/animations/segundapantalla.dart';
import 'package:ui/animations/twitch.dart';
import 'package:ui/screens/Splashscreen.dart';
import 'package:ui/screens/boxlunes.dart';
import 'package:ui/screens/cards.dart';
import 'package:ui/screens/main_screen.dart';
import 'package:ui/screens/sabadoprueba.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'job finder',
        home: lodeo(),
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