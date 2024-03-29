import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _MyAppState();
}

class _MyAppState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child:ListView(


      children: <Widget>[
        appbar(context),
        fotofit(),
        body(context),

      ],
      ),
      ),
    );
  }


  Widget appbar(BuildContext context) {
    return AppBar(
      title: Text('Login'),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    );
  }
  
  Widget fotofit() {
    return Container(
      child: Image.network('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',width: 230.0,
        height: 80.0,)
    );
  }

  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Login',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          SizedBox(height: 20.0,),
          TextField(

            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Usuario',
            ),
          ),
          SizedBox(height: 20.0,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Contraseña',
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text('Ingresar'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                elevation: 7.0,
                onPressed: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
              Text('crea una cuenta',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.blueAccent),
              ),
            ],
          ),
        ],
      ),
    );
  }
}