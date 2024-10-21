import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
   final String _localeKey = 'selected_locale';

  LocalizationCubit({Locale? initialLocale})
      : super(
          LocalizationState(locale: initialLocale ?? const Locale('en', '')),
        ) {
    // Load the cached locale when the cubit is initialized

  }

  // Method to change the locale
  void changeLocale(Locale locale) {
    emit(state.copyWith(locale: locale));
    _cacheLocale(locale);
  }

  // Optional helper method to change locale by language code (if needed)
  void changeLocaleByCode(String languageCode) {
    final newLocale = Locale(languageCode, '');
    emit(state.copyWith(locale: newLocale));
    _cacheLocale(newLocale);
  }

  // Load the cached locale from SharedPreferences
  Future<void> loadCachedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_localeKey) ?? 'en';
    final locale = Locale(languageCode, '');
    emit(state.copyWith(locale: locale));
  }

  // Cache the selected locale in SharedPreferences
  Future<void> _cacheLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_localeKey, locale.languageCode);
  }
}

