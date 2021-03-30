import 'package:flutter/material.dart';



class TextWidget extends StatelessWidget {

  final String title;

  TextWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return  Text(title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize:  MediaQuery.of(context).size.height/65,
      ),);
  }
}