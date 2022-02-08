import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Center(
        child:Text("Login Page",
        style: TextStyle(
          fontFamily: "Times New Roman",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
        textScaleFactor: 2.0,
        ),
      )
    );
  }
}