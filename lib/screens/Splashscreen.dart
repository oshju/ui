import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            Image.asset('assets/icons/foto.png'),
            Column(
              children: <Widget>[
                Text(
                'job hunting',
                style: Theme.of(context).textTheme.headline1
            ),
                Text(
                'Made easy',
                style: Theme.of(context).textTheme.headline2


              ),
             ],
              ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Text(
                'get started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
              onPressed: () {},
            )
          ]
        ),
      )
      );
  }
}