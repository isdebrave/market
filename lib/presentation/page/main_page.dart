import 'package:nested/nested.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/presentation/cubit/bottom_nav_cubit.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';
import 'package:market/presentation/page/category_page.dart';
import 'package:market/presentation/page/home_page.dart';
import 'package:market/presentation/page/search_page.dart';
import 'package:market/presentation/page/user_page.dart';
import 'package:market/presentation/widget/app_bar/main_app_bar.dart';
import 'package:market/presentation/widget/bottom_nav/bottom_nav.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const String routeName = 'MainPage';

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <SingleChildWidget>[
          BlocProvider<HomeAppBarCubit>(
            create: (_) => HomeAppBarCubit(),
          ),
          BlocProvider<BottomNavCubit>(
            create: (_) => BottomNavCubit(),
          ),
        ],
        child: const MainPageView(),
      );
}

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const MainAppBar(),
        body: BlocBuilder<BottomNavCubit, BottomNavEnum>(
          builder: (_, BottomNavEnum state) {
            switch (state) {
              case BottomNavEnum.home:
                return const HomePage();

              case BottomNavEnum.category:
                return const CategoryPage();

              case BottomNavEnum.search:
                return const SearchPage();

              case BottomNavEnum.user:
                return const UserPage();
            }
          },
        ),
        bottomNavigationBar: const BottomNav(),
      );
}
