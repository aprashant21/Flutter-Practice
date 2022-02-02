import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Prashant Adhikari";
    int age = 22;

    return MaterialApp(
      home: Material(
        child: Center(
          child: Text("Hello I am $name and $age years old"),
        ),
      ),
    );
  }
}
