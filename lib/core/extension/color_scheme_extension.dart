import 'package:flutter/material.dart';
import 'package:market/core/theme/config/color_scheme_config.dart';

extension ColorSchemeExt on ColorScheme {
  /// deprecated
  Color get background => ColorSchemeConfig.background;
  Color get onBackground => ColorSchemeConfig.onBackground;
  Color get surfaceVariant => ColorSchemeConfig.surfaceVariant;

  /// custom
  Color get contentPrimary => ColorSchemeConfig.contentPrimary;
  Color get contentSecondary => ColorSchemeConfig.contentSecondary;
  Color get contentTertiary => ColorSchemeConfig.contentTertiary;
  Color get contentFourth => ColorSchemeConfig.contentFourth;
  Color get positive => ColorSchemeConfig.positive;
}
