import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Portfolio',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20),

            // Name
            const Text(
              'Sara Khare',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // About Me Section
            const Text(
              'Hi! I am a Flutter developer passionate about creating beautiful and functional applications. I have a knack for learning new technologies.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),

            // Education Details
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Education',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.school, color: Colors.white),
              title: Text(
                'Masters of Computer Application',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Sardar Patel Institute of Technology, 2024 - 2026',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.school, color: Colors.white),
              title: Text(
                'Bachelor of Computer Science',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Mithibai College, 2020 - 2024',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.school, color: Colors.white),
              title: Text(
                '12th Grade (HSC)',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Narayana E-Techno School, 2018 - 2020',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.school, color: Colors.white),
              title: Text(
                '10th Grade (ISCE)',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Hiranandani Foundation School, 2017 - 2018',
                style: TextStyle(color: Colors.white70),
              ),
            ),

            const SizedBox(height: 20),

            //certificates
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Certificates',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.assignment_ind, color: Colors.white),
              title: Text(
                'The Complete Orcale SQL bootcamp',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Udemy, 2024',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assignment_ind, color: Colors.white),
              title: Text(
                ' 100 Days of Code: The Complete Python Pro Bootcamp',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Udemy, 2024',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assignment_ind, color: Colors.white),
              title: Text(
                ' Intoduction to Data Analysis using Microsoft Excel',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Coursera, 2024',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.assignment_ind, color: Colors.white),
              title: Text(
                'The Complete PL/SQL Bootcamp: “Beginner to Advanced PL/SQL”',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Udemy, 2024',
                style: TextStyle(color: Colors.white70),
              ),
            ),

            // Social Media Icons
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Find Me On',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin, // FontAwesome LinkedIn icon
                    color: Colors.blue, // Set the color if needed
                    size: 40, // Set the icon size
                  ),
                  onPressed: () =>
                      _launchUrl('https://linkedin.com/in/sara-khare'),
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram, // FontAwesome Instagram icon
                    color: Colors.pink, // Instagram color
                    size: 40, // Set the icon size
                  ),
                  onPressed: () =>
                      _launchUrl('https://www.instagram.com/sara.khareee'),
                ),
                const SizedBox(width: 20),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.github, // FontAwesome GitHub icon
                    color: Colors.black, // GitHub color
                    size: 40, // Set the icon size
                  ),
                  onPressed: () => _launchUrl('https://github.com/yourprofile'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
