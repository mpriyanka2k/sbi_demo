import 'package:flutter/material.dart';
import 'package:sbi_demo/core/constant/app_colors.dart';

class CategoryTabs extends StatefulWidget {
  const CategoryTabs({super.key});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  int selectedIndex = 0;

  final tabs = [
    'Practice Mock Test',
    'Modules',
    'Study Material',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final isSelected = selectedIndex == index;

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ChoiceChip(
                selected: isSelected,
                showCheckmark: false,
                side: BorderSide.none,
                elevation: 0,
                selectedColor: AppColors.headerBackground,
                backgroundColor: Colors.grey.shade200,

                label: SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(
                      tabs[index],
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),

                onSelected: (_) {
                  setState(() => selectedIndex = index);
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
