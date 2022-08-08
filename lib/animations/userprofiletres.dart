import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/Models/job.dart';
import 'package:ui/animations/dosperfiles.dart';
import 'package:ui/screens/main_screen.dart';

import '../Models/joblist.dart';

class usertres extends StatelessWidget {
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

  //do a list of jobs
  //List<job> jobs = [
  //  job(
  //    role: 'Product Designer',
  //    location: 'San Francisco, CA',
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 38.0),
            child: Stack(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://static1.abc.es/Media/201305/19/27139416--644x362.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      //TODO hacer descricpcion del usuario
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Text(
                          'Zinedine Zidane',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Real Madrid',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'France',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'maria',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                    joblistdos(),
                    joblist(this.jobs)
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 340.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                          color: Colors.white,
                          icon: Icons.clear_rounded,
                          hasgradient: null,
                        ),
                        ChoiceButton(
                          height: 80.0,
                          width: 80.0,
                          size: 30.0,
                          color: Colors.white,
                          icon: Icons.add_rounded,
                          hasgradient: null,
                        ),
                        ChoiceButton(
                          color: Colors.white,
                          icon: Icons.favorite_rounded,
                          hasgradient: null,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ChoiceButton extends StatelessWidget {
  final double width;
  final IconData icon;
  final double size;
  final double height;
  final bool? hasgradient;
  final Color? color;

  ChoiceButton({
    required this.color,
    required this.icon,
    this.size = 25.0,
    this.height = 50.0,
    required this.hasgradient,
    this.width = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: color,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dosperdiles()),
          );
        },
        child: Icon(icon),
      ),
    );
  }
}

class iconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/slider.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => main_screen()),
                );
              }),
          IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/search.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => main_screen()),
                );
              }),
          IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/settings.svg'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => main_screen()),
                );
              }),
        ],
      ),
    );
  }
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
