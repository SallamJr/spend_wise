import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spend_wise/core/controllers/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.light)) {
    _loadTheme(); // Load the theme when the cubit is created
  }

  // Method to switch to light theme
  void setLightTheme() async {
    await _cacheThemeMode(ThemeMode.light);
    emit(state.copyWith(themeMode: ThemeMode.light));
  }

  // Method to switch to dark theme
  void setDarkTheme() async {
    await _cacheThemeMode(ThemeMode.dark);
    emit(state.copyWith(themeMode: ThemeMode.dark));
  }

  // Optionally, toggle between themes
  void toggleTheme() async {
    if (state.themeMode == ThemeMode.light) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }

  // Cache the current theme mode
  Future<void> _cacheThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkTheme', themeMode == ThemeMode.dark);
  }

  // Load the cached theme mode
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkTheme = prefs.getBool('isDarkTheme') ?? false;
    if (isDarkTheme) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }
}