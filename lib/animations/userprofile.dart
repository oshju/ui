import 'package:flutter/material.dart';
import 'package:ui/screens/main_screen.dart';

class user extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 48.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://i1.wp.com/buscoempleord.com/wp-content/uploads/2017/01/secretaria.jpg?fit=626%2C626&ssl=1'),
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
                      'maria',
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
                    Text(
                      'maria',
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
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
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
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => main_screen() ),
            );
          },
        child: Icon(icon),
      ),
    );
  }
}
