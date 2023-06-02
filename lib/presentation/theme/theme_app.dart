import 'package:flutter/material.dart';

class AppTheme {

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)

      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        enableFeedback: true,
        foregroundColor: Colors.white,
        shape: StadiumBorder(),
         )
      
    );
  }
}