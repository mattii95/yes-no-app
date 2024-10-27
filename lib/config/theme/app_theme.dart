import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
  Colors.orange,
  Colors.green,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkTheme;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkTheme = false,
  }) : assert(
          selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
          'Colors must betwen 0 and ${_colorThemes.length - 1}',
        );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}
