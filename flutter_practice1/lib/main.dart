import 'package:flutter/material.dart';
import 'package:flutter_practice1/core/store.dart';
import 'package:flutter_practice1/pages/cart.dart';
import 'package:flutter_practice1/pages/home.dart';
import 'package:flutter_practice1/pages/login.dart';
import 'package:flutter_practice1/utils/routes.dart';
import 'package:flutter_practice1/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home.dart';
import 'core/store.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
