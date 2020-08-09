import 'package:flutter/material.dart';
import 'package:myapp/Download.dart';

import 'mytext.dart';
import 'coursesList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo',),
    );
  }
}


class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title,}) : super(key: key);
  final String title;
//  final List<String>courses;
//  = <String>["Khóa học React Native", "Khóa học Flutter", "Khóa học AR"];
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}

//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;

//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//        actions: <Widget>[
//          IconButton(icon:Icon(Icons.print),onPressed: null,
//          )
//        ]
//        ,
//      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
            child: download(),
//        child: Center(
//          child:Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Icon(Icons.lightbulb_outline,
//                  size: 100.0, color: Colors.redAccent),
//              myText(text:"Courses list"),
//              coursesList(),
//              IconButton(icon: Icon(Icons.add,),tooltip: "Click me",onPressed:(){print("clicked");},
//              ),
//              RaisedButton(color:Colors.red,highlightColor: Colors.white,child:myText(text:"click me"),onPressed: () {print('Say yeah') ; }
//              ),
//
//            ],
//          ),
//        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){print("floating action button clicked");},
        child: Icon(Icons.camera),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
