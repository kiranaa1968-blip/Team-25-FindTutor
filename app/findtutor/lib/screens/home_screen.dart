
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'tutor_search_screen.dart';

/// FindTutor Application Home Page
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /// Design the layout and various elements of the homepage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FindTutor'),

        /// Login
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text('Login'),
          ),
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.school,
                size: 80,
                color: Colors.indigo,
              ),

              const SizedBox(height: 20),

              const Text(
                'Learn from each other',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              /// A description of FindTutor
              const Text(
                'Find your people. Learn anything.',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              /// Find Tutor Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    /// Search
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TutorSearchScreen(),
                      ),
                    );
                  },
                  child: const Text('Find a Tutor'),
                ),
              ),

              const SizedBox(height: 12),

              /// Login as tutor
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text('Become a Tutor / Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
