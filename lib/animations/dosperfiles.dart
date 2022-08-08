import 'package:flutter/material.dart';

class dosperdiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customappbar(context),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Descripcion'),
        Text('Ver mas'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.network(
              'https://www.clipartkey.com/mpngs/m/152-1527346_5-star-review-icon.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Text('Categoria'),
          ],
        ),
      ],
    ),
  );
}
