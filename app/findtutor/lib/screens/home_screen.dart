
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'tutor_search_screen.dart';

/// หน้าหลักของแอปพลิเคชัน FindTutor
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /// สร้างหน้าตาและองค์ประกอบต่าง ๆ ของหน้าแรก
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// แถบด้านบนของแอป
      appBar: AppBar(
        title: const Text('FindTutor'),

        /// ปุ่มเข้าสู่ระบบ
        actions: [
          TextButton(
            onPressed: () {
              /// เปิดหน้า LoginScreen
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

      /// เนื้อหาหลักของหน้าแรก
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),

          /// จัดเรียงองค์ประกอบในแนวตั้ง
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// ไอคอนสื่อถึงการศึกษา
              const Icon(
                Icons.school,
                size: 80,
                color: Colors.indigo,
              ),

              const SizedBox(height: 20),

              /// ข้อความหลักของเว็บไซต์
              const Text(
                'Learn from each other',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              /// คำอธิบายสั้น ๆ ของ FindTutor
              const Text(
                'Find your people. Learn anything.',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              /// ปุ่มสำหรับค้นหาติวเตอร์
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    /// เปิดหน้าค้นหาติวเตอร์
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

              /// ปุ่มเข้าสู่ระบบเพื่อใช้งานหรือสมัครเป็นติวเตอร์
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    /// เปิดหน้าเข้าสู่ระบบ
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
