import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.purple,
  Colors.deepPurple,
  Colors.deepPurpleAccent,
  Colors.green,
  Colors.greenAccent,
  Colors.lightGreen,
  Colors.amber,
];

class AppTheme {
  final selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }): assert(selectedColor >= 0, 'Selected color must be greater than 0'),
      assert(selectedColor < colorList.length - 1, 'The selected color must be less or equal to ${colorList.length - 1}');

  ThemeData getTheme ()=> ThemeData(
    useMaterial3: true,
    // colorSchemeSeed: colorList[selectedColor],
    // backgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
      brightness: Brightness.dark, 
      primary: colorList[selectedColor], 
      onPrimary:colorList[selectedColor] , 
      secondary:colorList[selectedColor] , 
      onSecondary:colorList[selectedColor] , 
      error:colorList[selectedColor] , 
      onError:colorList[selectedColor] , 
      background:Colors.transparent , 
      onBackground:colorList[selectedColor] , 
      surface:colorList[selectedColor] , 
      onSurface:colorList[selectedColor] ),
    // 
//        TODO: study themeData to configure theme
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );
}