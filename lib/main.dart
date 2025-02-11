import 'package:flutter/material.dart';
import 'package:market/core/theme/custom/custom_theme_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: CustomThemeData.themeData,
        home: const Scaffold(
          body: Center(
            child: Text('Hello World!'),
          ),
        ),
      );
}
