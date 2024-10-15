import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primaryBackground, // Primary app color
  onPrimary: AppColors.primaryFonts, // Text/icons on primary
  primaryContainer: AppColors.secondaryBackground, // Background for primary
  onPrimaryContainer: AppColors.primaryFonts, // Text/icons on primary container
  secondary: AppColors.primaryButtons, // Secondary elements like buttons
  onSecondary: AppColors.primaryFonts, // Text/icons on secondary
  secondaryContainer:
      AppColors.secondaryBackground, // Background for secondary elements
  onSecondaryContainer:
      AppColors.primaryFonts, // Text/icons on secondary container
  tertiary: AppColors.secondaryButtons, // Accent or additional secondary colors
  onTertiary: AppColors.primaryFonts, // Text/icons on tertiary elements
  tertiaryContainer:
      AppColors.secondaryIcons, // Background for tertiary elements
  onTertiaryContainer:
      AppColors.primaryFonts, // Text/icons on tertiary container
  error: AppColors.hintBackground, // Error color
  errorContainer: AppColors.hintBackground, // Background for error
  onError: AppColors.primary, // Text/icons on error
  onErrorContainer: AppColors.primaryFonts, // Text/icons on error container
  surface: AppColors.primary, // Surface (e.g., cards, sheets)
  onSurface: AppColors.primaryFonts, // Text/icons on surface
  surfaceContainerHighest: AppColors.primary, // Top layer for surfaces
  onSurfaceVariant: AppColors.secondaryFonts, // Text/icons on a variant surface
  outline: AppColors.secondaryFonts, // Outlines and borders
  onInverseSurface:
      AppColors.secondaryFonts, // Text/icons on an inverted surface
  inverseSurface:
      AppColors.secondaryBackground, // Inverse surface (used in contrasts)
  inversePrimary: AppColors.primaryFonts, // Primary color in inverse mode
  shadow: AppColors.pressedIcons, // Shadow color
  surfaceTint: AppColors.primaryBackground, // Tint for surfaces
  outlineVariant: AppColors.secondaryFonts, // Outlines for variants
  scrim: AppColors.pressedIcons, // Scrim or overlay color
);

ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.secondaryButtons, // Primary color in dark mode
  onPrimary: AppColors.backgroundIcons, // Text/icons on primary in dark mode
  primaryContainer: AppColors.pressedIcons, // Container color for primary
  onPrimaryContainer:
      AppColors.secondaryIcons, // Text/icons on primary container
  secondary: AppColors.primaryButtons, // Secondary elements like buttons
  onSecondary: AppColors.primaryFonts, // Text/icons on secondary in dark mode
  secondaryContainer:
      AppColors.secondaryIcons, // Container color for secondary elements
  onSecondaryContainer:
      AppColors.primaryFonts, // Text/icons on secondary container
  tertiary: AppColors.pressedIcons, // Tertiary color in dark mode
  onTertiary: AppColors.backgroundIcons, // Text/icons on tertiary elements
  tertiaryContainer:
      AppColors.primaryCards, // Container color for tertiary elements
  onTertiaryContainer:
      AppColors.primaryFonts, // Text/icons on tertiary container
  error: AppColors.hintBackground, // Error color
  errorContainer: AppColors.secondaryIcons, // Background for error in dark mode
  onError: AppColors.primary, // Text/icons on error
  onErrorContainer: AppColors.primaryFonts, // Text/icons on error container
  surface: AppColors.primaryBackground, // Surface color in dark mode
  onSurface: AppColors.secondaryFonts, // Text/icons on surface in dark mode
  surfaceContainerHighest: AppColors.secondaryIcons, // Top layer for surfaces
  onSurfaceVariant: AppColors.secondaryFonts, // Text/icons on a variant surface
  outline: AppColors.primaryFonts, // Outlines in dark mode
  onInverseSurface:
      AppColors.secondaryFonts, // Text/icons on an inverted surface
  inverseSurface:
      AppColors.primaryBackground, // Inverse surface (used in contrasts)
  inversePrimary: AppColors.primaryFonts, // Primary color in inverse mode
  shadow: AppColors.pressedIcons, // Shadow color in dark mode
  surfaceTint: AppColors.secondaryButtons, // Tint for surfaces in dark mode
  outlineVariant: AppColors.secondaryFonts, // Outlines for variants
  scrim: AppColors.pressedIcons, // Scrim or overlay color
);
