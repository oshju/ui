import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/Models/item_job.dart';
import 'package:ui/animations/listtile.dart';
import 'package:ui/animations/oauth.dart';

class cofee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: ListView(
        children: <Widget>[
          _appbar(context),
          texto(),
          test(context)
        ],
      ),

    ));
  }
}

Widget _appbar(context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => listile(context)));
            }),
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => oauth()));
            }),
        IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => oauth()));
            }),
      ],
    ),
  );
}

Widget texto() {
  return Padding(
    padding: const EdgeInsets.all(28.0),
    child: Container(
      child: Text('Welcome to the Coffe App',
          style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget listvi(context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            listile(context),
          ]
        ),
      ),
  );
}

Widget theme(){
  return Theme(
    data: ThemeData(
      brightness: Brightness.dark,
    ), child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.arrow_downward),
        Text('Aasgard',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),

  );
}

Widget test(context){
  return CarouselSlider(
    options: CarouselOptions(
      height: 200.0,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
    ), items: <Widget>[
    item_job(),
    item_job(),
    item_job(),
  ]
  );
}