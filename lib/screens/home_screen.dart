// screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/header.dart';
import 'about_screen.dart'; // Added import for AboutScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                  title: 'Home'), // Changed from Header to HeaderWidget
              Hero(
                tag: 'profile',
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 120,
                          color: Colors.blue[800],
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        child: Text(
                          'John Carlo E. Abigania',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                color: Colors.blue[800],
                              ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        child: Text(
                          'Flutter Developer',
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.blue[800],
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Welcome to My Portfolio',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'I am a passionate Flutter developer with expertise in building beautiful,responsive, and functional mobile applications.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(height: 30),
                    _buildFeatureCard(
                      context,
                      icon: Icons.code,
                      title: 'Development',
                      description:
                          'Expert in Flutter, Dart, and mobile app development',
                    ),
                    SizedBox(height: 15),
                    _buildFeatureCard(
                      context,
                      icon: Icons.design_services,
                      title: 'UI/UX Design',
                      description:
                          'Creating intuitive and beautiful user interfaces',
                    ),
                    SizedBox(height: 15),
                    _buildFeatureCard(
                      context,
                      icon: Icons.integration_instructions,
                      title: 'API Integration',
                      description:
                          'Seamless integration with various backend services',
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Colors.blue[800],
                        ),
                        child: Text(
                          'Learn More About Me',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

  Widget _buildFeatureCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
