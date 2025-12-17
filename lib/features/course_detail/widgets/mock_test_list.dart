import 'package:flutter/material.dart';
import 'mock_test_card.dart';

class MockTestList extends StatelessWidget {
  const MockTestList({super.key});

  @override
  Widget build(BuildContext context) {
    final mockTests = [
      {
        'title': 'Mock Test 1',
        'questions': '50',
        'attempts': '3',
        'isLocked': false,
      },
      {
        'title': 'Mock Test 2',
        'questions': '40',
        'attempts': '1',
        'isLocked': false,
      },
      {
        'title': 'Mock Test 3',
        'questions': '60',
        'attempts': '0',
        'isLocked': true,
      },
      {
        'title': 'Mock Test 4',
        'questions': '45',
        'attempts': '0',
        'isLocked': true,
      },
      {
        'title': 'Mock Test 5',
        'questions': '30',
        'attempts': '0',
        'isLocked': true,
      },
      {
        'title': 'Mock Test 6',
        'questions': '25',
        'attempts': '0',
        'isLocked': true,
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: mockTests.length,
      itemBuilder: (context, index) {
        final item = mockTests[index];

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: MockTestCard(
            title: item['title'] as String,
            questions: item['questions'] as String,
            attempts: item['attempts'] as String,
            isLocked: item['isLocked'] as bool,
            onInfoTap: () {
              debugPrint('Open ${item['title']}');
            },
          ),
        );
      },
    );
  }
}
