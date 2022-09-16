import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:ui/screens/oauth2.dart';

class cars extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: SafeArea(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: <Widget>[

              container(),
              containeres(),containeres(),container()
            ]),
          ),
        )));
  }

  Widget container() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Image.network('https://www.decoracionia.net/imagenes/2015/07/iluminaci%C3%B3n-para-oficinas-8.jpg'),
      ),
    );
  }
}

Widget containeres() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Image.network('https://m.foolcdn.com/media/the-blueprint/images/GettyImages-1147469431.original.jpg'),
    ),
  );
}

Widget boton() {

  return Container(
    child: RaisedButton(
      onPressed: (

          ) {
        print('hola');
      },
      child: Text('RaisedButton'),
    ),
  );
}



