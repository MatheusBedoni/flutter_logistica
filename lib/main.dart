import 'package:flutter/material.dart';

import 'view/screen/home_page.dart';
import 'view_model/vagas_List_viw_model.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raro Labs',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:
        MyHomePage()
    );
  }
}

