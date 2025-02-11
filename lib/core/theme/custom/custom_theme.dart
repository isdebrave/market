import 'package:flutter/material.dart';
import 'package:market/core/theme/config/color_scheme_config.dart';
import 'package:market/core/theme/config/text_theme_config.dart';

class CustomTheme {
  static get textTheme => const TextTheme(
        ///
        displayLarge: TextThemeConfig.displayLarge,
        displayMedium: TextThemeConfig.displayMedium,
        displaySmall: TextThemeConfig.displaySmall,

        ///
        headlineLarge: TextThemeConfig.headlineLarge,
        headlineMedium: TextThemeConfig.headlineMedium,
        headlineSmall: TextThemeConfig.headlineSmall,

        ///
        titleLarge: TextThemeConfig.titleLarge,
        titleMedium: TextThemeConfig.titleMedium,
        titleSmall: TextThemeConfig.titleSmall,

        ///
        labelLarge: TextThemeConfig.labelLarge,
        labelMedium: TextThemeConfig.labelMedium,
        labelSmall: TextThemeConfig.labelSmall,

        ///
        bodyLarge: TextThemeConfig.bodyLarge,
        bodyMedium: TextThemeConfig.bodyMedium,
        bodySmall: TextThemeConfig.bodySmall,
      );

  static get colorScheme => const ColorScheme(
        brightness: Brightness.light,

        ///
        primary: ColorSchemeConfig.primary,
        onPrimary: ColorSchemeConfig.onPrimary,

        ///
        secondary: ColorSchemeConfig.secondary,
        onSecondary: ColorSchemeConfig.onSecondary,

        ///
        error: ColorSchemeConfig.error,
        onError: ColorSchemeConfig.onError,

        ///
        outline: ColorSchemeConfig.outline,

        ///
        surface: ColorSchemeConfig.surface,
        onSurface: ColorSchemeConfig.onSurface,
        onSurfaceVariant: ColorSchemeConfig.onSurfaceVariant,

        ///
        inverseSurface: ColorSchemeConfig.inverseSurface,
        onInverseSurface: ColorSchemeConfig.onInverseSurface,

        ///
        primaryContainer: ColorSchemeConfig.primaryContainer,
        inversePrimary: ColorSchemeConfig.inversePrimary,
        shadow: ColorSchemeConfig.shadow,
      );
}
