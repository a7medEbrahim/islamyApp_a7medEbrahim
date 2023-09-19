import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static ThemeData lightMood = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.normal),
        bodyMedium: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 25, fontWeight: FontWeight.w500),
        bodyLarge: GoogleFonts.elMessiri(
            color: blackColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: MyThemeData.blackColor, size: 30),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        backgroundColor: primaryColor,
      ));
  static ThemeData darkMood = ThemeData();
}
