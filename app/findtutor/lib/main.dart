import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FindTutorApp());
}

class FindTutorApp extends StatelessWidget {
  const FindTutorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FindTutor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
