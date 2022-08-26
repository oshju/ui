

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/animations/cofee.dart';
import 'package:ui/animations/flight.dart';
import 'package:ui/animations/oauth.dart';
import 'package:ui/screens/login.dart';
import 'package:ui/screens/main_screen.dart';

import '../Models/job.dart';
import '../Models/joblist.dart';


class jueves extends StatelessWidget {
  List<job> jobs = [
    job(
      role: 'Product Designer',
      location: 'San Francisco, CA',
    ),
    job(
      role: 'Frontend Web',
      location: 'Miami',
    ),
    job(
      role: 'Frontend Web',
      location: 'Miami',
    ),
    job(
      role: 'Frontend Web',
      location: 'Miami',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _appbar(context),
            fotos(),letras(),
            joblistdos(),
            joblist(this.jobs)
          ],

        ),
      ),
    );
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
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cofee()),
              );
            },
        ),
        Icon(Icons.satellite_alt),

        Icon(Icons.safety_check),

      ],
    ),
  );
}

BoxDecoration _boxdeccoration(BuildContext context) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.white,
  );
}


Widget fotos() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            'https://i.pinimg.com/736x/27/ad/8a/27ad8ac716a9025bde3ce18e2a2542e6.jpg',
            width: 400.0,
            height: 400.0,
          ),
          
        ],
      ),
    ),
  );
}

Widget letras(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.arrow_downward),
        Text('Aasgard',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Icon(Icons.arrow_downward),
        Text('Domingo',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
class joblistdos extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mis trabajos',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            //height: 10.0,
          ),
          //joblist(this.jobs),
        ],
      ),
    );
  }
}