import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class main_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[

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
          icon: SvgPicture.asset('assets/icons/iconoapple.jpg'),
          onPressed: (){},
        ),
      ],
    ),
    );
  }
}


