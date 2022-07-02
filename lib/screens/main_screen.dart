

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js/js.dart';
import 'package:ui/Models/jobcarrusel.dart';

class main_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
              _customappbar(),
            foryou(context),

          ],
        )
      ),
    );
  }

  Widget _customappbar(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
      child: Row(
        children: <Widget>[
        IconButton(
          iconSize: 40.0,
          icon: SvgPicture.asset('assets/icons/settings.svg'),
          onPressed: (){},
        ),
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: (){},
          ),
          IconButton(
            iconSize: 40.0,
            icon: SvgPicture.asset('assets/icons/slider.svg'),
            onPressed: (){},
          ),
      ],
    ),
    );
  }

  Widget foryou(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            "for you",
              style: Theme.of(context).textTheme.bodyText1
          ),
        ),
        jobcarrusel(),
      ],
    );
  }
}


