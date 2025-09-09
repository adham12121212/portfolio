import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  // Function to share portfolio link
  void _sharePortfolioLink() {
    Share.share('Check out my portfolio: https://adham-portfolio.web.app');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Adham Mohamed',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue[700],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section with modern design
            Container(
              width: double.infinity,

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.blue.shade900, Colors.blue.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  // Floating circles for modern design
                  Positioned(
                    top: -30,
                    left: -30,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.shade700.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    right: -20,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.shade400.withOpacity(0.3),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 50,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.shade600.withOpacity(0.2),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Profile Image
                      Container(
                        width: 150,
                        height: 150,
                        margin: const EdgeInsets.only(top: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'images/portoflioimage.jpg',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.blue.shade900,
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Adham Mohamed Ahmed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Flutter Developer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Email and Location
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.email, color: Colors.white, size: 16),
                          const SizedBox(width: 8),
                          GestureDetector(
                            onTap: () => launchUrl(Uri.parse('mailto:dev.adhamelnagar7@gmail.com')),
                            child: const Text(
                              'dev.adhamelnagar7@gmail.com',
                              style: TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on, color: Colors.white, size: 16),
                          const SizedBox(width: 8),
                          const Text(
                            'Mounfia, Egypt',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Social Links
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Image.asset('images/githup.png', width: 28, color: Colors.white),
                            onPressed: () => launchUrl(Uri.parse('https://github.com/adham12121212')),
                          ),
                          IconButton(
                            icon: Image.asset('images/Linkedin.png', width: 28),
                            onPressed: () => launchUrl(Uri.parse('https://linkedin.com/in/adham-bassiouny1')),
                          ),
                          IconButton(
                            icon: const Icon(Icons.share, color: Colors.white),
                            onPressed: _sharePortfolioLink,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // About Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Flutter Developer with practical experience developing cross-platform mobile applications using Flutter and Dart. '
                        'Proficient in building responsive user interfaces, integrating Firebase services, and applying best practices in '
                        'state management and clean architecture.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Personal Info',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoRow('Age', '24'),
                  _buildInfoRow('Residence', 'Egypt'),
                  _buildInfoRow('Address', 'Mounfia, Egypt'),
                  _buildInfoRow('E-mail', 'dev.adhamelnagar7@gmail.com'),
                  _buildInfoRow('Phone', '+201503540356'),
                  _buildInfoRow('Freelance', 'Available'),
                ],
              ),
            ),

            const Divider(),

            // Skills Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Technical Skills',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildSkillBar('Flutter & Dart', 90),
                  const SizedBox(height: 12),
                  _buildSkillBar('Firebase', 85),
                  const SizedBox(height: 12),
                  _buildSkillBar('REST APIs', 80),
                  const SizedBox(height: 12),
                  _buildSkillBar('State Management', 85),
                  const SizedBox(height: 12),
                  _buildSkillBar('UI/UX Design', 75),
                ],
              ),
            ),

            const Divider(),

            // Education Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Education',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.school, color: Colors.blue),
                    title: const Text(
                      'Bachelor\'s degree in Computer Science',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      'Modern University for Technology & Information, Egypt\n09/2019–06/2023',
                    ),
                  ),
                ],
              ),
            ),

            const Divider(),

            // Projects Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildProjectCard(
                    'E-Commerce App',
                    'Full-featured shopping platform with product browsing, authentication, cart management, and admin capabilities.',
                    'Flutter, Firebase, BLoC, Dio, Hive',
                  ),
                  const SizedBox(height: 16),
                  _buildProjectCard(
                    'Video Calling App',
                    'Real-time video calling application using ZEGOCLOUD SDK and Firebase authentication.',
                    'Flutter, ZEGOCLOUD SDK, Firebase, GetX',
                  ),
                  const SizedBox(height: 16),
                  _buildProjectCard(
                    'News App',
                    'Cross-platform news application with real-time articles, search, and dark/light theme.',
                    'Flutter, REST API, BLoC/Cubit',
                  ),
                  const SizedBox(height: 16),
                  _buildProjectCard(
                    'To-Do List App',
                    'Developed a To-Do List mobile application using Flutter',
                    'Hive, Bloc/Cubit',
                  ),
                  const SizedBox(height: 16),
                  _buildProjectCard(
                    'Note-Taking App',
                    'Built a Firebase-backed note-taking app with email/Google authentication.',
                    'Flutter, Firebase (Auth/Firestore), BLOC, GetX, Google Sign-In',
                  ),
                  const SizedBox(height: 16),
                  _buildProjectCard(
                    'Shopping App',
                    'Comprehensive Flutter-based e-commerce application with product catalog and cart management.',
                    'Flutter, Dart, BLoC, GetX, Hive, Dio',
                  ),
                ],
              ),
            ),

            // Contact Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.blue[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get In Touch',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Interested in working together? I\'d love to hear from you.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () =>
                          launchUrl(Uri.parse('mailto:dev.adhamelnagar7@gmail.com')),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Contact Me',
                        style: TextStyle(
                            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.grey[200],
              child: const Column(
                children: [
                  Text(
                    'Adham Mohamed',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '© 2023 All rights reserved',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillBar(String skill, int percentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: percentage / 100,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue[700]!),
          minHeight: 8,
        ),
        const SizedBox(height: 4),
        Text('$percentage%', style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildProjectCard(String title, String description, String technologies) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              technologies,
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
