import 'package:flutter/material.dart';
import 'package:market/core/routes/router.dart';
import 'package:market/core/theme/custom/custom_theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: CustomThemeData.themeData,
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      );
}
