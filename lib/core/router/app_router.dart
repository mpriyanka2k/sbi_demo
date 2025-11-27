import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/splash_screen.dart';
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',

    routes: [
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // GoRoute(
      //   path: '/',
      //   name: 'home',
      //   builder: (context, state) => const HomeScreen(),
      // ),

      // GoRoute(
      //   path: '/details/:id',
      //   name: 'details',
      //   builder: (context, state) {
      //     final id = state.pathParameters['id']!;
      //     return DetailsScreen(id: id);
      //   },
      // ),
    ],

    // OPTIONAL: Add error screen if route fails
    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text("Route not found: ${state.error}")),
    ),
  );
}
