import 'package:flutter/material.dart';
import 'package:market/core/routes/router.dart';
import 'package:market/core/theme/custom/custom_theme_data.dart';
import 'package:market/dependency_injection.dart';

void main() async {
  // final List<HomeMenusDto> test = await HomeMenusMockApi()
  //     .getHomeMenus(homeAppBarType: HomeAppBarEnum.market.name);

  // print(test);

  configureDependencies();
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
