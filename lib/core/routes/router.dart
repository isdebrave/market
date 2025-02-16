import 'package:go_router/go_router.dart';
import 'package:market/presentation/page/main_page.dart';
import 'package:market/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: <RouteBase>[
    GoRoute(
      path: '/splash',
      name: SplashScreen.routeName,
      builder: (_, __) => const SplashScreen(),
    ),
    GoRoute(
      path: '/main',
      name: MainPage.routeName,
      builder: (_, __) => const MainPage(),
    ),
  ],
);
