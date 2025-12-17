import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/features/course_detail/course_detail.dart';
import 'package:sbi_demo/features/courses/courses.dart';
import 'package:sbi_demo/features/site_home/site_home.dart';
import '../../features/home_screen/home_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.dashboard,

    routes: [
      GoRoute(
        path: AppRoutes.dashboard,
        name: 'dashboard',
        builder: (context, state) => Dashboard(),
      ),
      GoRoute(
        path: AppRoutes.siteHome,
        name: 'siteHome',
        builder: (context, state) => SiteHomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.courses,
        name: 'courses',
        builder: (context, state) => CoursesScreen(),
      ),
      GoRoute(
        path: AppRoutes.courseDetail,
        name: 'courseDetail',
        builder: (context, state) => CourseDetailScreen(),
      ),
    ],

    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text("Route not found: ${state.error}")),
    ),
  );
}
