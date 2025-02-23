import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/common/status.dart';
import 'package:market/dependency_injection.dart';
import 'package:market/presentation/bloc/home_menus/home_menus_bloc.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';
import 'package:market/presentation/widget/global_nav/global_nav_bar.dart';
import 'package:market/presentation/widget/global_nav/global_nav_bar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HomeAppBarCubit, HomeAppBarEnum>(
        builder: (_, HomeAppBarEnum state) => BlocProvider<HomeMenusBloc>(
          create: (_) => getIt<HomeMenusBloc>()
            ..add(GetHomeMenusEvent(homeAppBarType: state.name)),
          child: const HomePageView(),
        ),
      );
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocListener<HomeAppBarCubit, HomeAppBarEnum>(
        listener: (_, HomeAppBarEnum state) {
          context
              .read<HomeMenusBloc>()
              .add(GetHomeMenusEvent(homeAppBarType: state.name));
        },
        listenWhen: (HomeAppBarEnum previous, HomeAppBarEnum current) =>
            previous != current,
        child: BlocBuilder<HomeMenusBloc, HomeMenusState>(
          builder: (_, HomeMenusState state) => (() {
            switch (state.status) {
              case StatusEnum.initial:
              case StatusEnum.loading:
                return const Center(child: CircularProgressIndicator());

              case StatusEnum.success:
                return DefaultTabController(
                  length: state.data.length,
                  child: Column(
                    children: <Widget>[
                      GlobalNavBar(dataList: state.data),
                      GlobalNavBarView(dataList: state.data),
                    ],
                  ),
                );

              case StatusEnum.error:
                return AlertDialog(
                  title: Text(state.errorMessage),
                );
            }
          })(),
        ),
      );
}
