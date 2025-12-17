import 'package:flutter/material.dart';
import 'package:sbi_demo/core/router/app_routes.dart';
import 'deviders.dart';
import 'drawer_item.dart';

class AppNavigationDrawer extends StatelessWidget {
  final String appName;
  final String userName;
  final String userEmail;
  final Function(String route) onItemSelected;

  const AppNavigationDrawer({
    super.key,
    required this.appName,
    required this.userName,
    required this.userEmail,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 28,
                  child: Icon(Icons.person, size: 32),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      userName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      userEmail,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerItem(
                  icon: Icons.home_outlined,
                  title: 'Home',
                  onTap: () => onItemSelected(AppRoutes.dashboard),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.home_outlined,
                  title: 'Site Home',
                  onTap: () => onItemSelected('/siteHome'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.auto_stories_outlined,
                  title: 'My Courses',
                  onTap: () => onItemSelected(AppRoutes.courses),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.auto_stories_outlined,
                  title: 'My Learning Plan',
                  onTap: () => onItemSelected('/myLearningPlan'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.auto_graph_sharp,
                  title: 'Department Statistics',
                  onTap: () => onItemSelected('/departmentStatistics'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.auto_graph_outlined,
                  title: 'User Statistics',
                  onTap: () => onItemSelected('/userStatistics'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.person_2_outlined,
                  title: 'Profile',
                  onTap: () => onItemSelected('/profile'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.grade,
                  title: 'Grade',
                  onTap: () => onItemSelected('/grade'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.message_outlined,
                  title: 'Messages',
                  onTap: () => onItemSelected('/messages'),
                ),
                DrawerDivider(),
                DrawerItem(
                  icon: Icons.room_preferences,
                  title: 'Preferences',
                  onTap: () => onItemSelected('/preferences'),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Logout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
