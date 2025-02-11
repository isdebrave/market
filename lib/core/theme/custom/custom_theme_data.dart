import 'package:flutter/material.dart';
import 'package:market/core/theme/custom/custom_theme.dart';

class CustomThemeData {
  static get themeData => ThemeData(
        colorScheme: CustomTheme.colorScheme,
        textTheme: CustomTheme.textTheme,
      );
}
