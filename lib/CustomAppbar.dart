import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      CustomIconBtn(customicon:Icons.menu ),
        CustomIconBtn(customicon: Icons.search)
      ],
    );
  }
}
class CustomIconBtn extends StatelessWidget {
  IconData customicon ;
  CustomIconBtn({@required this.customicon});
  @override
  Widget build(BuildContext context) {
    return    Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(5)),
        child: Icon(customicon));
  }
}

