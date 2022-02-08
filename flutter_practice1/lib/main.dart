import 'package:flutter/material.dart';
import 'package:flutter_practice1/pages/home.dart';
import 'package:flutter_practice1/pages/login.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.lime),
      darkTheme: ThemeData(primarySwatch: Colors.lime),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
