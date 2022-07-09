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
        height: 150,
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