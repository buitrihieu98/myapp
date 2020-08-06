import 'package:flutter/material.dart';
class myText extends StatelessWidget{
  final String text;
  myText({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold)
    );

  }
}