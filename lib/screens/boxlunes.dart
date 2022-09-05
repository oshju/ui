import 'package:flutter/material.dart';
import 'package:ui/animations/cofee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


  class _HomePageState extends State<HomePage> {
     @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home Page'),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(15),
                        width: 200,
                        height: 300,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: const Text(
                          '1',
                          style: TextStyle(fontSize: 80),
                        )),
                    Container(
                        margin: const EdgeInsets.all(15),
                        width: 200,
                        height: 300,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        child: const Text(
                          '2',
                          style: TextStyle(fontSize: 80),
                        )),
                    Container(
                        margin: const EdgeInsets.all(15),
                        width: 200,
                        height: 300,
                        color: Colors.amber,
                        alignment: Alignment.center,
                        ),
                  ],
                ),
              ),
            )
          ),
        );
      }
    }
