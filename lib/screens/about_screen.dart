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
              HeaderWidget(title: 'About Me'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Hero(
                            tag: 'profile',
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Theme.of(context).colorScheme.primary.withOpacity(0.1), width: 4),
                              ),
                              child: CircleAvatar(
                                radius: 70,
                                backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.05),
                                backgroundImage: AssetImage('data/images/profile.jpg'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'John Carlo E. Abigania',
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                              fontSize: 26,
                            ),
                          ),
                          Text(
                            'Digital Architect & Developer',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    _buildInfoSection(
                      context,
                      title: 'Personal Info',
                      content: Column(
                        children: [
                          _buildInfoItem(Icons.person_outline_rounded, 'Name', 'John Carlo E. Abigania'),
                          _buildDivider(),
                          _buildInfoItem(Icons.cake_outlined, 'Age', '21 Years'),
                          _buildDivider(),
                          _buildInfoItem(Icons.location_on_outlined, 'Location', 'Laguna, Philippines'),
                          _buildDivider(),
                          _buildInfoItem(Icons.email_outlined, 'Email', 'abiganiacarlo687@email.com'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    _buildInfoSection(
                      context,
                      title: 'Education',
                      content: Column(
                        children: [
                          _buildInfoItem(Icons.school_outlined, 'University', 'University of Cabuyao'),
                          _buildDivider(),
                          _buildInfoItem(Icons.history_edu_outlined, 'Degree', 'BS in Information Technology'),
                          _buildDivider(),
                          _buildInfoItem(Icons.calendar_today_outlined, 'Graduation', 'Class of 2026'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    _buildInfoSection(
                      context,
                      title: 'Skills',
                      content: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          _buildSkillChip('Flutter'),
                          _buildSkillChip('Dart'),
                          _buildSkillChip('UI/UX'),
                          _buildSkillChip('Git'),
                          _buildSkillChip('Java'),
                          _buildSkillChip('Firebase'),
                          _buildSkillChip('REST API'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    _buildInfoSection(
                      context,
                      title: 'Current Role',
                      content: _buildExperienceItem(
                        title: 'IT Student & Developer',
                        company: 'Pamantasan ng Cabuyao',
                        period: '2022 - Present',
                        description: 'Specializing in mobile app development and modern UI architectures.',
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.withOpacity(0.1)),
          ),
          child: content,
        ),
      ],
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey[400]),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 24,
      thickness: 1,
      color: Colors.grey.withOpacity(0.05),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.15)),
      ),
      child: Text(
        skill,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          company,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          period,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[400],
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
