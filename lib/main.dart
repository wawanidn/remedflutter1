import 'package:flutter/material.dart';
import 'package:ujianpraktek/HomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: Homepage(),
      );
  }
}