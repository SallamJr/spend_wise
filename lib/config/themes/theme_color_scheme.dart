import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primaryLightMode, // Primary app color
  onPrimary: AppColors.primaryFontsLightMode, // Text/icons on primary
  primaryContainer:
      AppColors.primaryBackgroundLightMode, // Background for primary
  onPrimaryContainer:
      AppColors.pressedIconsLightMode, // Text/icons on primary container
  secondary:
      AppColors.primaryButtonsLightMode, // Secondary elements like buttons
  onSecondary: AppColors.secondaryFontsLightMode, // Text/icons on secondary
  secondaryContainer: AppColors
      .secondaryBackgroundLightMode, // Background for secondary elements
  onSecondaryContainer:
      AppColors.backgroundIconsLightMode, // Text/icons on secondary container
  tertiary: AppColors
      .secondaryLightMode, // Accent or additional secondary colors
  onTertiary:
      AppColors.primaryFontsLightMode, // Text/icons on tertiary elements
  tertiaryContainer:
      AppColors.secondaryIconsLightMode, // Background for tertiary elements
  onTertiaryContainer:
      AppColors.hintBackgroundLightMode, // Text/icons on tertiary container
  error: AppColors.hintBackgroundLightMode, // Error color
  errorContainer: AppColors.hintBackgroundLightMode, // Background for error
  onError: AppColors.primaryLightMode, // Text/icons on error
  onErrorContainer:
      AppColors.primaryFontsLightMode, // Text/icons on error container
  surface: AppColors.primaryButtonsLightMode, // Surface (e.g., cards, sheets)
  onSurface: AppColors.primaryFontsLightMode, // Text/icons on surface
  surfaceContainerHighest: AppColors.primaryLightMode, // Top layer for surfaces
  onSurfaceVariant:
      AppColors.secondaryButtonsLightMode, // Text/icons on a variant surface
  outline: AppColors.unSelectedIconsLightMode, // Outlines and borders
  onInverseSurface:
      AppColors.secondaryFontsLightMode, // Text/icons on an inverted surface
  inverseSurface: AppColors
      .secondaryBackgroundLightMode, // Inverse surface (used in contrasts)
  inversePrimary:
      AppColors.primaryFontsLightMode, // Primary color in inverse mode
  shadow: AppColors.pressedIconsLightMode, // Shadow color
  surfaceTint: AppColors.primaryBackgroundLightMode, // Tint for surfaces
  outlineVariant: AppColors.secondaryFontsLightMode, // Outlines for variants
  scrim: AppColors.pressedIconsLightMode, // Scrim or overlay color
);

ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.primaryDarkMode,
  //AppColors.secondaryButtons, // Primary color in dark mode
  onPrimary:
      AppColors.backgroundIconsDarkMode, // Text/icons on primary in dark mode
  primaryContainer:
      AppColors.pressedIconsDarkMode, // Container color for primary
  onPrimaryContainer:
      AppColors.secondaryIconsDarkMode, // Text/icons on primary container
  secondary:
      AppColors.primaryButtonsDarkMode, // Secondary elements like buttons
  onSecondary:
      AppColors.primaryFontsDarkMode, // Text/icons on secondary in dark mode
  secondaryContainer: AppColors
      .secondaryIconsDarkMode, // Container color for secondary elements
  onSecondaryContainer:
      AppColors.primaryFontsDarkMode, // Text/icons on secondary container
  tertiary: AppColors.pressedIconsDarkMode, // Tertiary color in dark mode
  onTertiary:
      AppColors.backgroundIconsDarkMode, // Text/icons on tertiary elements
  tertiaryContainer:
      AppColors.primaryCardsDarkMode, // Container color for tertiary elements
  onTertiaryContainer:
      AppColors.primaryFontsDarkMode, // Text/icons on tertiary container
  error: AppColors.hintBackgroundDarkMode, // Error color
  errorContainer:
      AppColors.secondaryIconsDarkMode, // Background for error in dark mode
  onError: AppColors.primaryDarkMode, // Text/icons on error
  onErrorContainer:
      AppColors.primaryFontsDarkMode, // Text/icons on error container
  surface: AppColors.primaryBackgroundDarkMode, // Surface color in dark mode
  onSurface:
      AppColors.secondaryFontsDarkMode, // Text/icons on surface in dark mode
  surfaceContainerHighest:
      AppColors.secondaryIconsDarkMode, // Top layer for surfaces
  onSurfaceVariant:
      AppColors.secondaryFontsDarkMode, // Text/icons on a variant surface
  outline: AppColors.primaryFontsDarkMode, // Outlines in dark mode
  onInverseSurface:
      AppColors.secondaryFontsDarkMode, // Text/icons on an inverted surface
  inverseSurface: AppColors
      .primaryBackgroundDarkMode, // Inverse surface (used in contrasts)
  inversePrimary:
      AppColors.primaryFontsDarkMode, // Primary color in inverse mode
  shadow: AppColors.pressedIconsDarkMode, // Shadow color in dark mode
  surfaceTint:
      AppColors.secondaryButtonsDarkMode, // Tint for surfaces in dark mode
  outlineVariant: AppColors.secondaryFontsDarkMode, // Outlines for variants
  scrim: AppColors.pressedIconsDarkMode, // Scrim or overlay color
);
