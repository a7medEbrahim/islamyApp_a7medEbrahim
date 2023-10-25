import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static ThemeData lightMood = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFB7935F),
          onPrimary: Colors.white,
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: Colors.transparent,
          surface: Colors.black,
          onSurface: Colors.white),
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
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: blackColor,
        backgroundColor: primaryColor,
      ));
  static ThemeData darkMood = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF141A2E),
          onPrimary: Colors.white,
          secondary: Color(0xffFACC1D),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.transparent,
          onBackground: Colors.transparent,
          surface: Color(0xffFACC1D),
          onSurface: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        bodyMedium: GoogleFonts.elMessiri(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
        bodyLarge: GoogleFonts.elMessiri(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Color(0xFF141A2E)),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        backgroundColor: Color(0xFF141A2E),
      ));
}
