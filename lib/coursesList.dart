import 'package:flutter/material.dart';
import 'dart:convert';
import 'mytext.dart';
import 'package:http/http.dart' as http;

class category extends StatefulWidget {
  @override
  coursesList createState() => coursesList();
}

class coursesList extends State<category> {
  final List<String> list = <String>[
    'Khóa học React Native',
    'Khóa học Flutter',
    'Khóa học AR',
    'Khóa học Phát triển Game',
    'Khóa học React Native nâng cao',
    'Khóa học Lập trình di động'
  ];
  final kUrl = "https://api.itedu.me/category/all";
  List<dynamic> data;
  @override
  Widget build(BuildContext context) {
    // tạo GET request
    if (data == null) {
      http.get(this.kUrl).then((http.Response response) {
        if (data == null) {
          http.get(this.kUrl).then((http.Response response) {
            setState(() =>
                data = json.decode(response.body)["payload"] as List<dynamic>);
          });
        }
      });
    }

    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            focusColor: Colors.lightGreen,
            onTap: () {
              print('list item ${index} clicked');
            },
            title: myText(text: '${index + 1}: ${data[index]["name"]}'),
            trailing: Icon(Icons.navigate_next),
          );
        },
      ),
    );
  }
}
