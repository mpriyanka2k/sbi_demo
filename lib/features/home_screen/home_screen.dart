import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sbi_demo/core/config/flavor.dart';
import 'package:sbi_demo/core/constant/app_textStyles.dart';
import 'package:sbi_demo/core/utils/localization/change_locale.dart';
import 'package:sbi_demo/core/widgets/app_bar.dart';
import 'package:sbi_demo/core/widgets/app_navigation_drawer.dart';
import 'package:sbi_demo/core/widgets/arrow_control_row.dart';
import 'package:sbi_demo/features/home_screen/widgets/dashboard_courses_grid.dart';
import 'package:sbi_demo/features/home_screen/widgets/gradient_card_grid.dart';
import 'package:sbi_demo/features/home_screen/widgets/gradient_info_card_row.dart';
import 'package:sbi_demo/features/home_screen/widgets/header_box.dart';
import 'package:sbi_demo/features/home_screen/widgets/recently_viewed_card_list.dart';
import 'package:sbi_demo/l10n/app_localizations.dart';

class Dashboard extends ConsumerWidget {
  Dashboard({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        titleWidget: Image.asset(
          'assets/images/sbi_title.png',
          height: 20,
          fit: BoxFit.contain,
        ),
        leftIcon: Icons.menu,
        onLeftIconTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        showNotification: true,
        notificationCount: 3,
      ),
      drawer: AppNavigationDrawer(
        appName: 'SBI FUNDS',
        userName: 'Hardip Machi',
        userEmail: 'hardip@email.com',
        onItemSelected: (route) {
          // Navigator.of(context).pop();
          context.push(route);
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                RoundedImageCard(
                  imagePath: 'assets/images/dashboard_logo.png',
                ),
                SizedBox(height: 16,),
                GradientCardGrid(),
                SizedBox(height: 16,),
                GradientInfoCardRow(icon: Icons.badge_outlined, count: '05', subtitle: 'Badges Earned',),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Courses In Progress',style: AppTextStyles.headingMedium,),
                    Text('View All', style: AppTextStyles.viewAllButtonStyle,)
                  ],
                ),
                SizedBox(height: 16,),
                DashboardCoursesGrid(),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recently Viewed',style: AppTextStyles.headingMedium,),
                    ArrowControlRow(),
                  ],
                ),
                SizedBox(height: 16,),
                RecentlyViewedCourseCardList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

