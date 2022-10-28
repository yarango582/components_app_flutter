import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      textButtonTheme: const TextButtonThemeData(
          style:
              ButtonStyle(foregroundColor: MaterialStatePropertyAll(primary))),
      appBarTheme: const AppBarTheme(backgroundColor: primary, elevation: 0));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(backgroundColor: primary, elevation: 0));
}
