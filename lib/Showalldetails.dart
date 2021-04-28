import 'package:flutter/material.dart';
import 'package:tinkerhub_flutter/HomePage.dart';

class ShowallDetails extends StatelessWidget {
  //final  String Img = Product.ImgPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [Image.asset('assets/img 1.jpg'),
            Icon(Icons.arrow_back_ios)
          ],
          
        )
      ],
    ));
  }
}
