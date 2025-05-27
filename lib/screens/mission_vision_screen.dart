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
              HeaderWidget(
                  title:
                      'Mission & Vision'), // Changed from Header to HeaderWidget
              SizedBox(height: 20),
              _buildSection(
                context,
                title: 'University of Cabuyao (PNC)',
                content: '',
                icon: Icons.school,
              ),
              SizedBox(height: 30),
              _buildSection(
                context,
                title: 'Vision',
                content:
                    'An institution of higher learning in Region IV, developing globally-competitive and value-laden professionals and leaders instrumental to community development and nation building.',
                icon: Icons.visibility,
              ),
              SizedBox(height: 30),
              _buildSection(
                context,
                title: 'Mission',
                content:
                    'An institution of higher learning committed to equip individuals with knowledge, skills and values that will enable them to achieve professional goals & provide leadership and service for national development.',
                icon: Icons.assignment,
              ),
              SizedBox(height: 30),
              _buildCoreValuesSection(context),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required String content,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
          SizedBox(height: 15),
          if (content.isNotEmpty)
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCoreValuesSection(BuildContext context) {
    final List<Map<String, dynamic>> values = [
      {
        'title': 'Excellence',
        'description':
            'Striving for the highest standards in academic and professional pursuits.',
        'icon': Icons.star,
        'color': Colors.amber,
      },
      {
        'title': 'Integrity',
        'description':
            'Upholding honesty, transparency, and ethical behavior in all endeavors.',
        'icon': Icons.verified_user,
        'color': Colors.blue,
      },
      {
        'title': 'Innovation',
        'description':
            'Encouraging creative thinking and pioneering solutions to challenges.',
        'icon': Icons.lightbulb,
        'color': Colors.orange,
      },
      {
        'title': 'Service',
        'description':
            'Committed to serving the community and contributing to national development.',
        'icon': Icons.volunteer_activism,
        'color': Colors.green,
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.format_list_bulleted,
                  size: 30,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(width: 15),
              Text(
                'Core Values',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
          SizedBox(height: 15),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: values.length,
            itemBuilder: (context, index) {
              final value = values[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: value['color'].withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        value['icon'],
                        color: value['color'],
                      ),
                    ),
                    title: Text(
                      value['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        value['description'],
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
