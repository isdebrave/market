import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/theme/config/color_scheme/color_scheme_extension.dart';
import 'package:market/presentation/cubit/bottom_nav_cubit.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({required this.bottomNav, super.key});

  final BottomNavEnum bottomNav;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<HomeAppBarCubit, HomeAppBarEnum>(
      builder: (_, HomeAppBarEnum state) => AppBar(
        backgroundColor:
            state.isMarket ? colorScheme.primary : colorScheme.white,
        title: Text(
          bottomNav.name,
          style: TextStyle(
            color:
                state.isMarket ? colorScheme.white : colorScheme.contentPrimary,
          ),
        ),
      ),
    );
  }
}
