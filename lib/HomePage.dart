import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tinkerhub_flutter/CustomAppbar.dart';
import 'package:tinkerhub_flutter/TextTheme.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void OnpressedEvent(BuildContext context){

    Navigator.of(context).pushNamed('/Showalldetails');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(9, 9, 9, 1),
        ),
        child: Row(
          children: [
            Icon(
              Icons.place,
              color: Colors.white,
            ),
            Text(
              "Map View",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("City", style: SmallGery),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "San Francisco",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GreyBox(title: "<\$220.00>"),
                    GreyBox(title: "For sale"),
                    GreyBox(title: "3-4 Beds"),
                    GreyBox(title: "3-4 Beds"),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  GestureDetector(
                    onTap: ()=>OnpressedEvent(context),
                    child: Product(
                        price: "\$200.00",
                        place: "Kochi",
                        specs: "4 Bed rooms / 2 Bath rooms",
                        ImgPath: "assets/img 1.jpg"),
                  ),
                  Product(
                      price: "\$199.00",
                      place: "Vytila",
                      specs: "4 Bed rooms / 3 Bath rooms",
                      ImgPath: "assets/img 2.jpg"),
                  Product(
                      price: "\$190.00",
                      place: "Edappally",
                      specs: "3 Bed rooms / 2 Bath rooms",
                      ImgPath: "assets/img 1.jpg"),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}

class GreyBox extends StatelessWidget {
  final String title;

  const GreyBox({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 17),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.black12,
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key key, this.price, this.place, this.specs, this.ImgPath})
      : super(key: key);
  final String price, place, specs, ImgPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(ImgPath)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Text(
                    "$price",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text("$place", style: SmallGery)
                ],
              ),
            ),
            Text("$specs")
          ],
        ),
        Positioned(
            top: 10,
            right: 20,
            child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Icon(Icons.favorite_border)))
      ]),
    );
  }
}
