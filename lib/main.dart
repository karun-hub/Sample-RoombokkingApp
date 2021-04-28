import 'package:flutter/material.dart';
import 'package:tinkerhub_flutter/Showalldetails.dart';
import './HomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    routes: {
      '/Showalldetails': (context)=>ShowallDetails()
    },
      home: MyHomePage(),
    );
  }
}

