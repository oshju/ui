

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js/js.dart';
import 'package:ui/Models/jobcarrusel.dart';
import 'package:ui/screens/Splashscreen.dart';

import '../Models/job.dart';
import '../Models/joblist.dart';
import 'main_screen.dart';

List<job> forYouJobs = [
  job(
    role: 'Product Designer',
    location: 'San Francisco, CA',

  ),
  job(
      role: 'Frontend Web',
      location: 'Miami',

  ),
];

class main_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
              _customappbar(),
            textheader(context),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        IconButton(
          iconSize: 40.0,
          icon: SvgPicture.asset('assets/icons/slider.svg'),
          onPressed: (){},
        ),
          Row(
            children: [
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/search.svg'),
                onPressed: (){},
              ),
              IconButton(
                iconSize: 40.0,
                icon: SvgPicture.asset('assets/icons/settings.svg'),
                onPressed: (){},
              ),
            ],
          ),

      ],
    ),
    );
  }

  Widget textheader(context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
            children: <Widget>[
              Text(
                  'hi jade',
              style: Theme.of(context).textTheme.bodyText1
            ),
              Text(
                  'find job',
                  style: Theme.of(context).textTheme.bodyText1
              ),
              Text(
                  'made easy',
                  style: Theme.of(context).textTheme.bodyText1
              ),
        ]
      ),
    );

  }

  Widget textfooter(context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'mathew wolff',
            style: TextStyle(fontFamily: 'Poppin',color: Colors.purple,fontSize: 18.0,fontWeight: FontWeight.bold),
          ),
          Text(
            'Last movement',

             style: TextStyle(fontFamily: 'Poppin',color: Colors.purple,fontSize: 15.0,fontWeight: FontWeight.bold),
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
            style: TextStyle(fontFamily: 'Poppin',color: Colors.grey,fontSize: 30.0,fontWeight: FontWeight.bold),
          ),
        ),
        jobcarrusel(),
        textfooter(context),
        //textfooter1(context),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: joblist(forYouJobs),
        ),
      ],
    );
  }

  Widget textfooter1(context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'mathew wolff',
            style: TextStyle(fontFamily: 'Poppin',color: Colors.purple,fontSize: 18.0,fontWeight: FontWeight.bold),
          ),
          Text(
            'Last movement',

            style: TextStyle(fontFamily: 'Poppin',color: Colors.purple,fontSize: 15.0,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }


}


