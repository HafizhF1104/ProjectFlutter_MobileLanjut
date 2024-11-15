import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Center(
          child: Text(
            "Selamat datang",
            style: TextStyle(
                backgroundColor: Colors.amber,
                color: Colors.white,
                fontSize: 30),
          ),
        ),
      ),
    );
  }
}
