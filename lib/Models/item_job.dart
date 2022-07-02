import 'package:flutter/material.dart';

class item_job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 20.0, bottom: 20.0),
      child: Container(
        decoration : _boxdeccoration(context),
      ),
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