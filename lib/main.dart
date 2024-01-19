import 'package:flutter/material.dart';
import 'package:myportfolio/UI/Home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
