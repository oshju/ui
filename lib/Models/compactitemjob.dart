import 'package:flutter/material.dart';
import 'package:ui/Models/job.dart';

import 'job.dart';
import 'package:ui/Models/company.dart';

class compactitemjob extends StatelessWidget {
  late job jobs;
  compactitemjob(this.jobs);



  BoxDecoration boxdecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],

    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        decoration: boxdecoration1(),

        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                    companylogo(),

                    _infotext(),
                ],
              ),
              favicon()
            ],
          ),
        ),
      ),
    );
  }
  Widget favicon(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        Icons.favorite,
        color: Colors.grey,
      ),
    );
  }
  Widget _infotext() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          jobs.role,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          jobs.location,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: <Widget>[
            Icon(Icons.location_on, color: Colors.blue, size: 15),
          ]
        )
      ],
    );
  }

  Widget companylogo(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      width: 70.0,
      height: 70.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network('https://media.glassdoor.com/sqll/9079/google-squarelogo-1441130773284.png',
          width: 60.0,
        ),

      ),
    );
  }

  BoxDecoration boxdecoration1() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],

    );
  }

}