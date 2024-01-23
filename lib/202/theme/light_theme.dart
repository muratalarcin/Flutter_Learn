import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.blueMenia)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: const CheckboxThemeData(
            fillColor: MaterialStatePropertyAll(Colors.green), side: BorderSide(color: Colors.green)),
        textTheme:
            ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(fontSize: 25, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 128, 40, 40);
  final Color blueMenia = const Color.fromARGB(95, 188, 248, 1);
}
