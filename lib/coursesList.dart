import 'package:flutter/material.dart';
import 'mytext.dart';
class coursesList extends StatelessWidget{

  final List<String> list= <String>['Khóa học React Native', 'Khóa học Flutter', 'Khóa học AR','Khóa học Phát triển Game','Khóa học React Native nâng cao','Khóa học Lập trình di động'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            focusColor: Colors.lightGreen,
            onTap: (){print('list item ${index} clicked');},
            title: myText(text:'${index+1}: ${list[index]}'),
            trailing: Icon(Icons.navigate_next),
          );
        },
      ),
    );
  }
}


