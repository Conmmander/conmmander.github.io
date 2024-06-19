import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import './widgets/navigation.dart';
import './widgets/site_theme.dart';

final GoRouter _router = GoRouter(
  initialLocation: "/",
  onException: (BuildContext context, GoRouterState state, GoRouter goRouter) {
    context.go("/error");
  },
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.home);
      },
    ),
    GoRoute(
      path: '/about',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.about);
      },
    ),
    GoRoute(
      path: '/experience',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.experience);
      },
    ),
    GoRoute(
      path: '/skills',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.skills);
      },
    ),
    GoRoute(
      path: '/posts',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.posts);
      },
    ),
    GoRoute(
      path: '/error',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.error);
      },
    ),
  ]
);
void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ryan\'s Portfolio Site',
      theme: siteTheme,
      routerConfig: _router,
    );
  }
}