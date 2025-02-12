import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:market/home_screen.dart';
import 'package:market/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: <RouteBase>[
    GoRoute(
      path: '/splash',
      name: SplashScreen.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      name: HomeScreen.routeName,
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
  ],
);
