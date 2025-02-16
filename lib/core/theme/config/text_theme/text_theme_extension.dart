import 'package:flutter/material.dart';
import 'package:market/core/theme/config/text_theme/text_theme_config.dart';

extension TextThemeExt on TextTheme? {
  /// custom
  TextStyle? get titleLargeSemiBold => TextThemeConfig.titleLargeSemiBold;
  TextStyle? get titleMediumSemiBold => TextThemeConfig.titleMediumSemiBold;
  TextStyle? get titleSmallSemiBold => TextThemeConfig.titleSmallSemiBold;

  ///
  TextStyle? get titleLargeBold => TextThemeConfig.titleLargeBold;
  TextStyle? get titleMediumBold => TextThemeConfig.titleMediumBold;
  TextStyle? get titleSmallBold => TextThemeConfig.titleSmallBold;

  ///
  TextStyle? get labelLargeSemiBold => TextThemeConfig.labelLargeSemiBold;
  TextStyle? get labelSmallSemiBold => TextThemeConfig.labelSmallSemiBold;

  ///
  TextStyle? get labelLargeBold => TextThemeConfig.labelLargeSemiBold;
  TextStyle? get labelMediumBold => TextThemeConfig.labelLargeSemiBold;
}
