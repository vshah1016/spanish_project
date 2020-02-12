import 'package:flutter/material.dart';
import 'package:spanish_project/name.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Name(),
    );
  }
}
