import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'animatedcontainer.dart';

class dosperdiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customappbar(context),
            descripcion(context),
            protos(context),
          ],

        ),
      ),
    );
  }
}

Widget _customappbar(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        Expanded(
          child: Text('Jobs'),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
      ],
    ),
  );
}

Widget descripcion(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text('Reviews',
        style: TextStyle(fontFamily: 'Poppins-Bold.ttf',color: Colors.purple,fontSize: 30.0,fontWeight: FontWeight.bold),
        ),
        Text('Ver mas Ver mas Ver masvVer mas Ver mas Ver mas,hoi oioin ii hola mas mejor',
        style: TextStyle(fontFamily: 'Poppin',color: Colors.cyan,fontSize: 30.0,fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.network(
                'https://www.clipartkey.com/mpngs/m/152-1527346_5-star-review-icon.png',
                width: 230.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
              Text('Categoria',
                style: TextStyle(fontFamily: 'Poppin',color: Colors.cyan,fontSize: 20.0,fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}

Widget protos(context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Image.network(
        'https://toppng.com/uploads/preview/logo-instagram-sin-fondo-11551061315n0r6bw0aas.png',
        width: 80.0,
        height: 80.0,
        fit: BoxFit.cover,
      ),

      Image.network(
        'https://p7.hiclipart.com/preview/226/377/228/5bbf52fd5a77d.jpg',
        width: 80.0,
        height: 80.0,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://i.pinimg.com/originals/88/02/74/880274abefd084cf9b89447bcc8b7782.png',
        width: 60.0,
        height: 80.0,
        fit: BoxFit.cover,
      ),
    ]),
  );
}
