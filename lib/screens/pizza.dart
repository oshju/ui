import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/animations/userprofile.dart';
import 'package:ui/main.dart';
import 'package:ui/screens/messaging.dart';

import 'apiprueba.dart';

class Pizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              nuevo(context),
              foto(context),
              letras()


            ],
          )
      ),
    );
  }

  Widget nuevo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/slider.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pizza()),
                );
              }
          ),
          Row(
            children: [
              IconButton(
                  iconSize: 40.0,
                  icon: SvgPicture.asset('assets/icons/search.svg'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => hola()),
                    );
                  }


              ),
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => user() ),
                  );
                }
              )
            ],
          ),

        ],
      ),
    );
  }

  Widget foto(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: _boxdeccoration(context),

            child: Image.network(
              'https://cdn1.vectorstock.com/i/1000x1000/01/85/funny-astronaut-make-selfie-on-moon-vector-20200185.jpg',
              width: 250.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Foto'),
              ],
            ),
          ),
          Icon(Icons.photo_camera),
            ],
      ),
    );
  }


  BoxDecoration _boxdeccoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Theme.of(context).primaryColor,
    );
  }

  Widget letras() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('brook koepka',
          style: TextStyle(fontFamily: 'Poppin',color: Colors.purple,fontSize: 18.0,fontWeight: FontWeight.bold),
      ),
          Text('chase koepka',
          style: TextStyle(fontFamily: 'Poppin',color: Colors.purple,fontSize: 18.0,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

