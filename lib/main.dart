import 'package:flutter/material.dart';
import 'package:game_of_life/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game of Life',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.black,
      ),
      home: Home(),
    );
  }
}
