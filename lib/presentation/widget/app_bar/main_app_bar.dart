import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/presentation/cubit/bottom_nav_cubit.dart';
import 'package:market/presentation/widget/app_bar/default_app_bar.dart';
import 'package:market/presentation/widget/app_bar/home_app_bar.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<BottomNavCubit, BottomNavEnum>(
        builder: (_, BottomNavEnum state) {
          switch (state) {
            case BottomNavEnum.home:
              return const HomeAppBar();

            default:
              return DefaultAppBar(bottomNav: state);
          }
        },
      );

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
