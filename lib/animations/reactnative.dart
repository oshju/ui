import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Models/item_job.dart';

class reactnative extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
        children: <Widget>[
          Text('hola'),
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
          listview(),
          carrusel()
        ],
        ),
      ),
    );;
  }
}

Widget listview() {

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
      Expanded(
        child: SizedBox(
        height: 200.0,
          child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 100.0,
              height: 200.0,
              color: Colors.red,
            ),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
            ),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.red,
            ),
          ],
        ),
        ),
      ),
    ],
    ),
  );
}

Widget swiper() {
  return Container(
    width: 200.0,
    height: 200.0,
    color: Colors.blue,
  );

}

Widget carrusel(){
  return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0,
      ),
      items: <Widget>[
        item_job(),
        item_job(),
        item_job(),
      ]

  );

}


