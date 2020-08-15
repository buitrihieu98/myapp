import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'dart:convert';
=======
import 'courseDetail.dart';
>>>>>>> 96252c4107e66534cfbc4f878c737847bf69820a
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
<<<<<<< HEAD
            onTap: () {
              print('list item ${index} clicked');
            },
            title: myText(text: '${index + 1}: ${data[index]["name"]}'),
=======
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      CourseDetail(list[index])
                  ));
            },
            title: myText(text:'${index+1}: ${list[index]}'),
>>>>>>> 96252c4107e66534cfbc4f878c737847bf69820a
            trailing: Icon(Icons.navigate_next),
          );
        },
      ),
    );
  }
}
