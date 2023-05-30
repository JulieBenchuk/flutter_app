import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        titleTextStyle: TextStyle(
            letterSpacing: 1,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black87)),
    scaffoldBackgroundColor: Colors.black87,
    primarySwatch: Colors.lightGreen,
    dividerColor: Colors.white30,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
      bodySmall: TextStyle(
          color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 15),
    ));
