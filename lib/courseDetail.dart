import 'package:flutter/material.dart';
import 'mytext.dart';
class courseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child:myText(text:"Course title"),
        )
    );
  }
}