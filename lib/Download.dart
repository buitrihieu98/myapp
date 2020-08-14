import 'package:flutter/material.dart';
import 'package:myapp/coursesList.dart';
import 'mytext.dart';
class download extends StatelessWidget {
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
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.file_download,
                    size:50,
                ),
                myText(text:"Download"),
                category()
              ]
          )
        )
    );
  }
}