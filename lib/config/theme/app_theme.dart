import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blueAccent,
  Colors.indigoAccent,
  Colors.deepOrange,
  Colors.blueGrey,
  Colors.white70,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
    : assert(
        selectedColor >= 0 && selectedColor < colorList.length,
        'Selected color must be greater then 0',
      ),
      assert(
        selectedColor < colorList.length - 1,
        'Selected color must be less or equal than ${colorList.length - 1}',
      );

  ThemeData themeData() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );
}
