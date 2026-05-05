// screens/mission_vision_screen.dart
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class MissionVisionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(title: 'Mission & Vision'),
              const SizedBox(height: 32),
              _buildSection(
                context,
                title: 'University of Cabuyao',
                subtitle: 'Pamantasan ng Cabuyao (PNC)',
                content: '',
                icon: Icons.school_rounded,
                isPrimary: true,
              ),
              const SizedBox(height: 32),
              _buildSection(
                context,
                title: 'Vision',
                subtitle: 'Our long-term aspirations',
                content: 'An institution of higher learning in Region IV, developing globally-competitive and value-laden professionals and leaders instrumental to community development and nation building.',
                icon: Icons.auto_graph_rounded,
              ),
              const SizedBox(height: 32),
              _buildSection(
                context,
                title: 'Mission',
                subtitle: 'Our purpose and commitment',
                content: 'An institution of higher learning committed to equip individuals with knowledge, skills and values that will enable them to achieve professional goals & provide leadership and service for national development.',
                icon: Icons.track_changes_rounded,
              ),
              const SizedBox(height: 40),
              _buildCoreValuesSection(context),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String content,
    required IconData icon,
    bool isPrimary = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: isPrimary
                      ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
                      : Colors.grey.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  icon,
                  size: 24,
                  color: isPrimary
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey[700],
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (content.isNotEmpty) ...[
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.withOpacity(0.1)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCoreValuesSection(BuildContext context) {
    final List<Map<String, dynamic>> values = [
      {
        'title': 'Excellence',
        'description': 'Striving for the highest standards in all pursuits.',
        'icon': Icons.star_rounded,
      },
      {
        'title': 'Integrity',
        'description': 'Upholding honesty and ethical behavior always.',
        'icon': Icons.verified_user_rounded,
      },
      {
        'title': 'Innovation',
        'description': 'Encouraging creative thinking and pioneering solutions.',
        'icon': Icons.lightbulb_rounded,
      },
      {
        'title': 'Service',
        'description': 'Committed to serving the community and nation.',
        'icon': Icons.volunteer_activism_rounded,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Core Values',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9,
            ),
            itemCount: values.length,
            itemBuilder: (context, index) {
              final value = values[index];
              return Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.withOpacity(0.1)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      value['icon'],
                      color: Theme.of(context).colorScheme.primary,
                      size: 28,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      value['title'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      value['description'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey[600],
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
