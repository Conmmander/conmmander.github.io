import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './widgets/navigation.dart';

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
      path: '/error',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: NavigationLocation.error);
      },
    ),
  ]
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ryan\'s Portfolio Site',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 2, 96, 173)),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent
      ),

      routerConfig: _router,
    );
  }
}