import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home_screen/flavor_test_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',

    routes: [
      GoRoute(
        path: '/',
        name: 'home_screen',
        builder: (context, state) => const FlavorTestScreen(),
      ),
    ],

    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text("Route not found: ${state.error}")),
    ),
  );
}
