import 'package:flutter/material.dart';
import 'package:rarolabs_desafio/view_model/vagas_view_model.dart';

import 'text_widget.dart';



class InformaWidget extends StatelessWidget {

  final String title;
  final Color color;

  InformaWidget({this.title,this.color});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
            color: color ,
          ),
          height: 15,
          width: 15,

        ),
        TextWidget(title: title,
          ),


      ],
    );
  }
}