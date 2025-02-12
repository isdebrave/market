import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/extension/color_scheme_extension.dart';
import 'package:market/core/extension/text_theme_extension.dart';
import 'package:market/core/theme/config/icon_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: Container(
          color: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leadingWidth: 86,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(IconConfig.mainLogo),
            ),
            title: DefaultTabController(
              length: 2,
              child: Align(
                child: IntrinsicWidth(
                  child: Container(
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabAlignment: TabAlignment.center,
                      isScrollable: true,
                      labelPadding: const EdgeInsets.fromLTRB(12, 6, 12, 3),
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: colorScheme.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelStyle: textTheme.labelLargeBold.copyWith(
                        letterSpacing: 0.45,
                      ),
                      unselectedLabelStyle: textTheme.labelLarge?.copyWith(
                        letterSpacing: 0.5,
                      ),
                      labelColor: colorScheme.primary,
                      unselectedLabelColor: colorScheme.white,
                      tabs: const <Widget>[
                        Text('마켓패캠'),
                        Text('뷰티패캠'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    IconConfig.location,
                    colorFilter: ColorFilter.mode(
                      colorScheme.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    IconConfig.cart,
                    colorFilter: ColorFilter.mode(
                      colorScheme.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: const Text('Home'),
        ),
      ),
    );
  }
}
