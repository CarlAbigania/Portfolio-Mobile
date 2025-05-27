// screens/about_screen.dart
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                  title: 'About Me'), // Changed from Header to HeaderWidget
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.blue[100],
                        child: Icon(
                          Icons.person,
                          size: 100,
                          color: Colors.blue[800],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildInfoSection(
                      context,
                      title: 'Personal Information',
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoItem('Name', 'John Carlo E. Abigania'),
                          _buildInfoItem('Age', '21 years'),
                          _buildInfoItem('Location', 'Cabuyao, Laguna'),
                          _buildInfoItem('Email', 'abiganiacarlo687@email.com'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildInfoSection(
                      context,
                      title: 'Educational Background',
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInfoItem('University', 'University of Cabuyao'),
                          _buildInfoItem('Degree',
                              'Bachelor of Science in Information Technology'),
                          _buildInfoItem('Graduation Year', '2026'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildInfoSection(
                      context,
                      title: 'Skills',
                      content: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _buildSkillChip('Flutter'),
                          _buildSkillChip('Dart'),
                          _buildSkillChip('UI/UX Design'),
                          _buildSkillChip('Git'),
                          _buildSkillChip('Java'),
                          _buildSkillChip('SQL'),
                          _buildSkillChip('HTML/CSS'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildInfoSection(
                      context,
                      title: 'Experience',
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildExperienceItem(
                            title: 'Student',
                            company: 'Pamantasan ng Cabuyao(PNC)',
                            period: '2022 - Present',
                            description:
                                'a student of Bachelor of Science in Information Technology at PNC, currently in my 3rd year.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection(
    BuildContext context, {
    required String title,
    required Widget content,
  }) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: content,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      backgroundColor: Colors.blue[50],
      label: Text(
        skill,
        style: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildExperienceItem({
    required String title,
    required String company,
    required String period,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 3),
        Text(
          company,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.blue[800],
          ),
        ),
        SizedBox(height: 3),
        Text(
          period,
          style: TextStyle(
            color: Colors.grey[600],
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
