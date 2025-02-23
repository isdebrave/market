import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market/core/common/status.dart';
import 'package:market/core/theme/config/color_scheme/color_scheme_extension.dart';
import 'package:market/core/theme/config/text_theme/text_theme_extension.dart';
import 'package:market/data/data_source/mock/home_menus_mock_api.dart';
import 'package:market/data/repository_impl/home_menus_repository_impl.dart';
import 'package:market/domain/model/home_menus/home_menus_model.dart';
import 'package:market/domain/usecase/get_home_menus_usecase.dart';
import 'package:market/presentation/bloc/home_menus/home_menus_bloc.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<HomeAppBarCubit, HomeAppBarEnum>(
        builder: (_, HomeAppBarEnum state) => BlocProvider<HomeMenusBloc>(
          create: (_) => HomeMenusBloc(
            GetHomeMenusUsecase(
              HomeMenusRepositoryImpl(
                HomeMenusMockApi(),
              ),
            ),
          )..add(GetHomeMenusEvent(homeAppBarType: state.name)),
          child: const HomePageView(),
        ),
      );
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return BlocListener<HomeAppBarCubit, HomeAppBarEnum>(
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
              return SizedBox(
                height: 46,
                child: DefaultTabController(
                  length: state.data.length,
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
                    tabs: state.data
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

            case StatusEnum.error:
              return AlertDialog(
                title: Text(state.errorMessage),
              );
          }
        })(),
      ),
    );
  }
}
