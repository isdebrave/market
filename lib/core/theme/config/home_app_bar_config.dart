import 'package:flutter/services.dart';
import 'package:market/core/theme/config/color_scheme/color_scheme_config.dart';

class HomeAppBarConfig {
  HomeAppBarConfig({
    required this.animatedContainer,
    required this.systemOverlayStyle,
    required this.leading,
    required this.tabBarBackground,
    required this.indicator,
    required this.labelColor,
    required this.unselectedLabelColor,
    required this.action,
  });

  final Color animatedContainer;
  final SystemUiOverlayStyle systemOverlayStyle;
  final Color leading;
  final Color tabBarBackground;
  final Color indicator;
  final Color labelColor;
  final Color unselectedLabelColor;
  final Color action;

  static HomeAppBarConfig get market => HomeAppBarConfig(
        animatedContainer: ColorSchemeConfig.primary,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: ColorSchemeConfig.white,
        tabBarBackground: ColorSchemeConfig.primaryContainer,
        indicator: ColorSchemeConfig.white,
        labelColor: ColorSchemeConfig.primary,
        unselectedLabelColor: ColorSchemeConfig.white,
        action: ColorSchemeConfig.white,
      );

  static HomeAppBarConfig get beauty => HomeAppBarConfig(
        animatedContainer: ColorSchemeConfig.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: ColorSchemeConfig.primary,
        tabBarBackground: ColorSchemeConfig.surface,
        indicator: ColorSchemeConfig.primary,
        labelColor: ColorSchemeConfig.white,
        unselectedLabelColor: ColorSchemeConfig.contentPrimary,
        action: ColorSchemeConfig.contentPrimary,
      );
}
