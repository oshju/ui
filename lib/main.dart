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
        home: Splashscreen()
    );
  }
}