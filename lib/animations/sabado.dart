import 'package:flutter/material.dart';

class sabado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sabado'),
      ),
      body: Column(
        children: [
          Text('sabado'),
          Text('sabado'),
          Row(children: [
            Text('Welcome to the Coffe App',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Text('sabado'),
              ),

            ),

          ])
        ],
      ),
    );
  }
}

Widget lista() {
  List<String> countries = [
    "Brazil",
    "Nepal",
    "India",
    "China",
    "USA",
    "Canada"
  ];
  return Container(
    width: double.infinity,
    height: 180,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          height: 50,
          child: Card(
            child: Image.network(
              'https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter.png',
            ),
          ),
        );
      },
    ),
  );
}

class pruebasabado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('pruebasabado'),
        ),
        body: SafeArea(
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
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 80),
                    )),
                Container(
                    margin: const EdgeInsets.all(15),
                    width: 200,
                    height: 300,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 80),
                    )),
                Container(
                    margin: const EdgeInsets.all(15),
                    width: 200,
                    height: 300,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 80),
                    )),
                Container(
                    margin: const EdgeInsets.all(15),
                    width: 200,
                    height: 300,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: const Text(
                      '6',
                      style: TextStyle(fontSize: 80),
                    )),
              ],
            ),
          ),
        ));
  }
}
