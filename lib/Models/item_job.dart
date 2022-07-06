import 'package:flutter/material.dart';

class item_job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 20.0, bottom: 20.0),
      child: Container(
        decoration : _boxdeccoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                _companylogo(),
                  favicon(),

                ],
              ),
              infotext()
            ],
          ),
        ),
      ),
    );
  }
Widget _companylogo(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      width: 70.0,
      height: 70.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network('https://media.glassdoor.com/sqll/9079/google-squarelogo-1441130773284.png',
          width: 60.0,
        ),

      ),
    );
}

Widget favicon(){
    return Icon(
        Icons.favorite,
        color: Colors.white,
    );
}

Widget infotext(){
    return Column(
      //
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Googles',
          style: TextStyle(fontFamily: 'Poppin',color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.bold),
        ),
        Text(
          'Google',
          style: TextStyle(fontFamily: 'Poppin',color: Colors.white,fontSize: 20.0),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            SizedBox(width: 5.0),
            Text(
              'San Francisco, CA',
              style: TextStyle(fontFamily: 'Poppin',color: Colors.white,fontSize: 15.0),
            ),
          ],
        ),

      ],
    );
}

  BoxDecoration _boxdeccoration(context) {
    return BoxDecoration(
      color : Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow> [
          BoxShadow(
           color : Colors.black,
            offset :Offset(4.0,4.0),
            blurRadius: 10.0

    ),


        ],
    );
  }
}