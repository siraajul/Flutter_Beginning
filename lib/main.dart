import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appName: 'First App',
  ));
}

//Stateless
class MyApp extends StatelessWidget {
  final String appName;

  const MyApp({required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: appName, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      //AppBar
      appBar: AppBar(
        title: Text(
          'Intro to Widget',
          textAlign: TextAlign.end,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.black,
              wordSpacing: 0.6,
              letterSpacing: 0.6,
              decoration: TextDecoration.lineThrough),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

      //Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Hello World')],
        ),
      ),
    );
  }
}
