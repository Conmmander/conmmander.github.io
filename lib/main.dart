import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './widgets/navigation.dart';

import './pages/home.dart';
import './pages/about.dart';
import './pages/experience.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Navigation(page: Home());
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return const Navigation(page: About());
          },
        ),
        GoRoute(
          path: 'experience',
          builder: (BuildContext context, GoRouterState state) {
            return const Navigation(page: Experience());
          },
        ),
      ],
    ),
  ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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