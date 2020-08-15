import 'package:flutter/material.dart';
import 'package:myapp/Download.dart';

import 'courseDetail.dart';
import 'mytext.dart';
import 'coursesList.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyTab()
  ));
}

class MyTab extends StatefulWidget {
  // This widget is the root of your application.
  @override
  MyTabState createState() => new MyTabState();
 /* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }*/
}

class MyTabState extends State<MyTab> with SingleTickerProviderStateMixin{
  TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        bottomNavigationBar: Material (
          child: TabBar(
            tabs: <Tab> [
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.cloud_download))
            ],
            controller: controller,
          ),
          color: Colors.blue,
        ),
        body: TabBarView(
          children: <Widget> [
            MyHomePage(),
            Download()
          ],
          controller: controller,
        )
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
           // child: download(),
      child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.lightbulb_outline,
                size: 100.0, color: Colors.redAccent),
            myText(text:"Courses list"),
            coursesList(),
            IconButton(icon: Icon(Icons.add,),tooltip: "Click me",onPressed:(){print("clicked");},
            ),
             /*RaisedButton(color:Colors.red,highlightColor: Colors.white,child:myText(text:"click me"),onPressed: () {print('Say yeah') ; }
            ),*/

           ],
        ),
      )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){print("floating action button clicked");},
        child: Icon(Icons.camera),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
