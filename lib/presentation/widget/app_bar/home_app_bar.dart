import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/theme/config/color_scheme/color_scheme_extension.dart';
import 'package:market/core/theme/config/text_theme/text_theme_extension.dart';
import 'package:market/core/theme/config/icon_config.dart';
import 'package:market/core/util/custom_svg_picture.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return BlocBuilder<HomeAppBarCubit, HomeAppBarEnum>(
      builder: (_, HomeAppBarEnum state) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: state.theme.animatedContainer,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: AppBar(
          systemOverlayStyle: state.theme.systemOverlayStyle,
          backgroundColor: Colors.transparent,
          leadingWidth: 86,
          leading: CustomSvgPicture(
            logo: IconConfig.mainLogo,
            color: state.theme.leading,
          ),
          title: DefaultTabController(
            length: 2,
            initialIndex: state.index,
            child: Align(
              child: IntrinsicWidth(
                child: Container(
                  decoration: BoxDecoration(
                    color: state.theme.tabBarBackground,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabAlignment: TabAlignment.center,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.fromLTRB(12, 6, 12, 3),
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: state.theme.indicator,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    labelStyle: textTheme.labelLargeBold?.copyWith(
                      letterSpacing: 0.45,
                    ),
                    unselectedLabelStyle: textTheme.labelLarge?.copyWith(
                      letterSpacing: 0.5,
                    ),
                    onTap: (int index) {
                      context.read<HomeAppBarCubit>().changeIndex(index);
                    },
                    splashBorderRadius: BorderRadius.circular(30.0),
                    labelColor: state.theme.labelColor,
                    unselectedLabelColor: state.theme.unselectedLabelColor,
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
              child: CustomSvgPicture(
                logo: IconConfig.location,
                color: state.theme.action,
                padding: 4,
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: CustomSvgPicture(
                logo: IconConfig.cart,
                color: state.theme.action,
                padding: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
