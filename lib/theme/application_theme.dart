import 'package:flutter/material.dart';
import 'package:logistics/theme/colors.dart';

/// This is the application light theme package
final appTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Nunito',
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.secondaryBackground,
    canvasColor: AppColors.secondaryBackground,

    // icon theme
    iconTheme:
        ThemeData.light().iconTheme.copyWith(color: AppColors.secondary),

    // font theme
    textTheme: const TextTheme(
      displaySmall: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryText),
      headlineLarge: TextStyle(fontSize: 30, color: AppColors.primaryText),
      headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText),
      headlineSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText),
      titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText),
      titleMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText),
      titleSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText),
      labelLarge: TextStyle(fontSize: 14, color: AppColors.secondaryText),
      labelMedium: TextStyle(fontSize: 12, color: AppColors.secondaryText),
      labelSmall: TextStyle(fontSize: 11, color: AppColors.secondaryText),
      bodyLarge: TextStyle(fontSize: 13, color: AppColors.primaryText),
      bodyMedium: TextStyle(fontSize: 12, color: AppColors.primaryText),
      bodySmall: TextStyle(fontSize: 11, color: AppColors.primaryText),
    ),

    // color theme
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.secondary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.info,
      error: AppColors.error,
      onError: AppColors.primaryText,
      background: AppColors.secondaryBackground,
      onBackground: AppColors.primaryText,
      surface: AppColors.primaryBackground,
      onSurface: AppColors.secondaryText,
      outline: AppColors.border,
      primaryContainer: AppColors.backgroundPrimaryAccent,
    ),


);
