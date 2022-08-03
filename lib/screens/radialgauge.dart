import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(radialgauge());
  var file=File('lib/screens/Datos.json');
  var text=file.readAsStringSync();
  var resBody = json.decode(text);
   var data = resBody["values"];
  return data.toString();

}

class radialgauge extends StatelessWidget {
  // This widget is the root of your application.

  late List data;

  String getSWData1()  {
    var file=File('lib/screens/Datos.json');
    var text=file.readAsStringSync();
      var resBody = json.decode(text);
      data = resBody["values"];
    return data.toString();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  void setState(Null Function() param0) {}

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List? getSWData()  {
    var file=File('lib/screens/Datos.json');
    var text=file.readAsStringSync();
    var resBody = json.decode(text);
    List? data = resBody["values"];
    return data;

  }


//obtener el valor en la pocicion 0
  String getSWData1()  {
    var file=File('lib/screens/Datos.json');
    var text=file.readAsStringSync();
    var resBody = json.decode(text);
    List? data = resBody["values"];
    return data[0].toString();

  }




  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SfRadialGauge(
          title: GaugeTitle(
              text: 'Speedometer',
              textStyle:
                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          enableLoadingAnimation: true,
          animationDuration: 4500,
          axes: <RadialAxis>[
            RadialAxis(minimum: 0, maximum: 150, pointers: <GaugePointer>[
              NeedlePointer(value: data[0], enableAnimation: true)
            ], ranges: <GaugeRange>[
              GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
              GaugeRange(startValue: 50, endValue: 100, color: Colors.orange),
              GaugeRange(startValue: 100, endValue: 150, color: Colors.red)
            ], annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                  widget: Text(
                    '90.0 MPH',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  positionFactor: 0.5,
                  angle: 90)
            ])
          ],
        ),
      ),
    ));
  }
}

class Launch{
  String? date;
  int? values;


  Launch.fromJson(Map<String, dynamic> json) {
    date = json['id'];
    values = json['values'];

  }
}

