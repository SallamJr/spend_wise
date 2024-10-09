import 'package:flutter/material.dart';
import 'package:spend_wise/config/themes/theme_color_scheme.dart';

ThemeData lightThemeData() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
  );
}

ThemeData darkThemeData() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
  );
}
