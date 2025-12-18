import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/core/constant/app_spacers.dart';
import 'package:sbi_demo/core/widgets/app_bar.dart';
import 'package:sbi_demo/features/site_home/trending_section.dart';
import 'category_tab.dart';
import 'course_grid.dart';
import 'gamification_section.dart';
import 'header_section.dart';
import 'how_to_get_started.dart';

class SiteHomeScreen extends StatelessWidget {
  const SiteHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Site Home',
          leftIcon: Icons.arrow_back,
          centerTitle: false,
          showNotification: false,
          onLeftIconTap: () => context.pop()
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSection(),
            const CategoryTabs(),
            AppSpacers.vLg16,
            const CourseGrid(),
            AppSpacers.vXxl24,
            const GamificationSection(),
            AppSpacers.vXxl24,
            const TrendingSection(),
            AppSpacers.vXxl24,
            const HowToGetStarted(),
          ],
        ),
      ),
    );
  }
}
