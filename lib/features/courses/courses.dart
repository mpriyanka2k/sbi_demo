import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';
import 'package:sbi_demo/core/constant/app_spacings.dart';
import 'package:sbi_demo/core/router/app_routes.dart';
import 'package:sbi_demo/core/widgets/app_bar.dart';
import 'package:sbi_demo/features/courses/widgets/courses_grid.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> with SingleTickerProviderStateMixin{
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Courses',
          leftIcon: Icons.arrow_back,
          centerTitle: false,
          showNotification: false,
          onLeftIconTap: () => context.pop()
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(AppSpacing.md),
              child: Text(
                'SIF - Common Derivatives',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: AppColors.coursesTab,
                  borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                    color: AppColors.headerBackground,
                    borderRadius: BorderRadius.circular(AppSpacing.radiusSm),
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(fontWeight: FontWeight.w500),
                  tabs: const [
                    Tab(
                      child: Center(
                        child: Text(
                          'Practice\nMock Test',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Tab(
                      child: Center(
                          child: Text('Modules')),
                    ),
                    Tab(
                      child: Center(
                        child: Text(
                          'Study\nMaterial',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: AppSpacing.md),

            Expanded(
              child: TabBarView(
                children: [
                  CoursesGrid(itemCount: 6,),
                  CoursesGrid(itemCount: 4,),
                  CoursesGrid(itemCount: 2,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
