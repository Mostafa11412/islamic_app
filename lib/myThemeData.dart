import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color DarkprimaryColor = Color(0xFFFACC1D);
  static Color DarkSecprimaryColor = Color(0xFF141A2E);

  static ThemeData LightTHeme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(size: 30, color: Colors.black),
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xFF242424))),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFF242424)),
        bodyMedium: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xFF242424)),
        displayMedium: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF242424),
        unselectedItemColor: Color(0xFFF8F8F8),
        selectedIconTheme: IconThemeData(size: 40),
        unselectedIconTheme: IconThemeData(size: 40),
        selectedLabelStyle: GoogleFonts.inter(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
      ));

  static ThemeData DarkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(size: 30, color: Colors.white),
          centerTitle: true,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF))),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFFFFFFFF)),
        bodyMedium: GoogleFonts.inter(
            fontSize: 25, fontWeight: FontWeight.w400, color: DarkprimaryColor),
        displayMedium: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xFF242424)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: DarkSecprimaryColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: DarkprimaryColor,
        unselectedItemColor: Color(0xFFF8F8F8),
        selectedIconTheme: IconThemeData(size: 40),
        unselectedIconTheme: IconThemeData(size: 40),
        selectedLabelStyle: GoogleFonts.inter(
            color: DarkprimaryColor, fontSize: 12, fontWeight: FontWeight.w600),
      ));
}
