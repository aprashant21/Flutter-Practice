import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.blueGrey,
      fontFamily: GoogleFonts.arvo().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: GoogleFonts.arvo().fontFamily,
            fontSize: 18,
          )));

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlue = Color(0xff403b58);

}
