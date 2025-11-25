import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/features/home/screens/flavor_test_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',

    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const FlavorTestScreen(),
      ),
    ],

    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text("Route not found: ${state.error}")),
    ),
  );
}
