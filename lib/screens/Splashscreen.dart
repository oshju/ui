import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.asset('assets/icons/foto.png'),
            Text(
                'job hunting'
            ),
            Text(
              'Made easy'
            )
          ],
        ),
      ),
    );
  }
}