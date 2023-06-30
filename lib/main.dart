import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
          useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Basic Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              // height: 100,
              // width: 100,
              // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // alignment: Alignment.center,
              child: Text(
                'Ostad',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.center,
              child: Text(
                'Ostad',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
