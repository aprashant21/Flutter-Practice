import 'package:flutter/material.dart';
import 'package:flutter_practice1/widgets/Drawer.dart';

class HomePage extends StatelessWidget {
  final String name = "Prashant Adhikari";
  final int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello I am $name and $age years old"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
