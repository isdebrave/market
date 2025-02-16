import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          color: Colors.red,
          child: const Text('Home'),
        ),
      );
}
