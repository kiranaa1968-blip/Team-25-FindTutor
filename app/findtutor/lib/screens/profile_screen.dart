
import 'package:flutter/material.dart';

/// A page for displaying user profile information
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('My Profile'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),

            const SizedBox(height: 15),

            /// User name
            const Text(
              'Alex Morgan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text('alex@example.com'),

            const Divider(height: 35),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Student Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Subjects to Learn'),
              subtitle: Text('Mathematics, Biology'),
            ),

            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Courses to Teach'),
              subtitle: Text('English'),
            ),

            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Availability'),
              subtitle: Text('Monday, Wednesday, Friday'),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Edit profile feature coming soon',
                      ),
                    ),
                  );
                },
                child: const Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
