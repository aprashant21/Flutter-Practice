import 'package:flutter/material.dart';
import 'package:flutter_practice1/pages/home.dart';
import 'package:flutter_practice1/pages/login.dart';
import 'package:flutter_practice1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
          primarySwatch: Colors.lime,
          fontFamily: GoogleFonts.arvo().fontFamily),
      darkTheme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
