import 'package:flutter/material.dart';
import 'package:market/core/theme/config/color_scheme/color_scheme_extension.dart';
import 'package:market/core/theme/config/text_theme/text_theme_extension.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';

class GlobalNavBar extends StatelessWidget {
  const GlobalNavBar({required this.dataList, super.key});

  final List<HomeMenusModel> dataList;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 46,
      child: DefaultTabController(
        length: dataList.length,
        child: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelPadding: const EdgeInsets.symmetric(horizontal: 8),
          dividerColor: Colors.transparent,
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: colorScheme.primary,
                width: 2,
              ),
            ),
          ),
          labelStyle: textTheme.titleSmallSemiBold?.copyWith(
            color: colorScheme.primary,
          ),
          unselectedLabelStyle: textTheme.titleSmall?.copyWith(
            color: colorScheme.contentSecondary,
          ),
          tabs: dataList
              .map(
                (HomeMenusModel e) => SizedBox(
                  width: 65,
                  child: Tab(text: e.title),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
