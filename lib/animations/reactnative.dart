import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Models/item_job.dart';

class reactnative extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(
                  'candidate profile',
                  style: TextStyle(fontSize: 30),
                ),


                      Container(
                        child: Column(
                            children: <Widget>[
                              listview(),
                              carrusel(),
                              carrusel(),
                              carrusel(),

                            ],
                          ),
                        ),
                      ],
                    )),

            ),
          ),
        );
  }
}

Widget listview() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.9c384b1cb9cb9d11fcc0f5770676b6c1?rik=Rg5Ck43JpswHeA&riu=http%3a%2f%2fwww.paredro.com%2fwp-content%2fuploads%2f2015%2f09%2fairbnb-1.jpg&ehk=nnTqAHf8rYo%2fYDIhU9LOus9alccoqKY%2bDQlkqrNCJJc%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.9c384b1cb9cb9d11fcc0f5770676b6c1?rik=Rg5Ck43JpswHeA&riu=http%3a%2f%2fwww.paredro.com%2fwp-content%2fuploads%2f2015%2f09%2fairbnb-1.jpg&ehk=nnTqAHf8rYo%2fYDIhU9LOus9alccoqKY%2bDQlkqrNCJJc%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://elchapuzasinformatico.com/wp-content/uploads/2019/12/Amazon-Web-Services.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.5b86af6e44b60f1a37f1fa7abb33fbd0?rik=mz4J4X1zen8%2bug&riu=http%3a%2f%2fatuttoschermo.altervista.org%2fwp-content%2fuploads%2f2017%2f04%2fnetflix-logo.png&ehk=x7I1HBPrruAQfEFnbGMgAk2CcQJjKtc1xes0GW67bpA%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget swiper() {
  return Container(
    width: 200.0,
    height: 200.0,
    color: Colors.blue,
  );
}

Widget carrusel() {
  return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0,
      ),
      items: <Widget>[
        item_job(),
        item_job(),
        item_job(),
      ]);
}

Widget gridbag() {
  return CustomScrollView(
    primary: false,
    slivers: <Widget>[
      SliverPadding(
        padding: const EdgeInsets.all(20),
        sliver: SliverGrid.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[100],
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[200],
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[300],
              child: const Text('Sound of screams but the'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[400],
              child: const Text('Who scream'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[500],
              child: const Text('Revolution is coming...'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.green[600],
              child: const Text('Revolution, they...'),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget griddue() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[100],
          child: const Text("He'd have you all unravel at the"),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[200],
          child: const Text('Heed not the rabble'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[300],
          child: const Text('Sound of screams but the'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[400],
          child: const Text('Who scream'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[500],
          child: const Text('Revolution is coming...'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          color: Colors.teal[600],
          child: const Text('Revolution, they...'),
        ),
      ],
    );

}
