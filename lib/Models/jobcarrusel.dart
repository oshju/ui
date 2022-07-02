import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui/Models/item_job.dart';


class jobcarrusel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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

}