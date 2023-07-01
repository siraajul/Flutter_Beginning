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
        backgroundColor: Colors.red,
        title: Text(
          'Basic Widget',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      //--------------------------------Body--------------------------------------
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Container 01
            Container(
              color: Colors.green,
              // height: 100,
              // width: 100,
              // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
              child: Text(
                'Ostad',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
//---------------------------------------------------------------
            //Container 02
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.black, width: 4),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Ostad',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            //----------------Icon-------------------------
            Icon(
              Icons.account_box,
              size: 50,
              color: Colors.cyan,
              weight: 800,
              fill: 0.5,
            ),
//--------------------------------------Image----------------------------------------------
            Image.network(
              'https://www.mindinventory.com/blog/wp-content/uploads/2022/10/flutter-3.png',
              width: 200,
              height: 100,
              fit: BoxFit.contain,
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Image.asset(
                'assets/flutter_2.png',
                width: 200,
                height: 100,
              ),
            ),
            //---------------Elevated Button-----------------------
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  print('Hello');
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
          //----------------------------------------------------
        ),
      ),
    );
  }
}
