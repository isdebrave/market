import 'package:flutter/material.dart';
import 'package:market/core/routes/router.dart';
import 'package:market/core/theme/custom/custom_theme_data.dart';
import 'package:market/data/data_source/mock/home_menus_mock_api.dart';
import 'package:market/data/dto/home_menus/home_menus_dto.dart';
import 'package:market/presentation/cubit/home_app_bar_cubit.dart';

void main() async {
  final List<HomeMenusDto> test = await HomeMenusMockApi()
      .getHomeMenus(homeAppBarType: HomeAppBarEnum.market.name);

  print(test);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: CustomThemeData.themeData,
        routerConfig: router,
      );
}
