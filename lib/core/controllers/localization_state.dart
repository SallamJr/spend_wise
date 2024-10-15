import 'package:flutter/material.dart';

class LocalizationState {
  final Locale locale;

  const LocalizationState({required this.locale});

  LocalizationState copyWith({Locale? locale}) {
    return LocalizationState(
      locale: locale ?? this.locale,
    );
  }

  @override
  String toString() => 'LocalizationState(locale: $locale)';
}
