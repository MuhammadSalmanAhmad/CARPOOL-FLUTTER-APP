import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0XFF212121),
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Color(0XFF212121),
  );
}

InputDecorationTheme inputDecorationTheme() {
  UnderlineInputBorder enabledborder = const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white30, width: 2));
  UnderlineInputBorder focusedborder = const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.greenAccent));
  TextStyle simplestyle = const TextStyle(
    color: Colors.white38,
  );

  return InputDecorationTheme(
      enabledBorder: enabledborder,
      focusedBorder: focusedborder,
      hintStyle: simplestyle);
}
