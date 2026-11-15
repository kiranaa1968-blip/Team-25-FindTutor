
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AppDatabase {

  static Database? _database;

  /// Check whether the database already exists.
/// If it exists, use the existing database.
/// If it does not exist, create a new database.
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {

    String path = join(
      await getDatabasesPath(),
      'findtutor.db',
    );

    /// Initialize the database and create tables upon first use.
    return await openDatabase(
      path,
      version: 1,

      onCreate: (db, version) async {

        await db.execute('''
          CREATE TABLE students (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT NOT NULL UNIQUE
          )
        ''');

        await db.execute('''
          CREATE TABLE tutors (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            student_id INTEGER NOT NULL,
            description TEXT,
            rating REAL DEFAULT 0,
            FOREIGN KEY (student_id) REFERENCES students(id)
          )
        ''');

        await db.execute('''
          CREATE TABLE tutoring_requests (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            student_id INTEGER NOT NULL,
            tutor_id INTEGER NOT NULL,
            subject TEXT NOT NULL,
            preferred_time TEXT,
            session_type TEXT,
            status TEXT DEFAULT 'Pending',
            FOREIGN KEY (student_id) REFERENCES students(id),
            FOREIGN KEY (tutor_id) REFERENCES tutors(id)
          )
        ''');
      },
    );
  }

  /// Add student information to the students table
  Future<int> insertStudent(
    String name,
    String email,
  ) async {
    final db = await database;

    return await db.insert('students', {
      'name': name,
      'email': email,
    });
  }

  Future<List<Map<String, dynamic>>> getStudents() async {
    final db = await database;

    return await db.query('students');
  }

  Future<int> insertTutor(
    int studentId,
    String description,
  ) async {
    final db = await database;

    return await db.insert('tutors', {
      'student_id': studentId,
      'description': description,
    });
  }

  Future<List<Map<String, dynamic>>> getTutors() async {
    final db = await database;

    return await db.query('tutors');
  }

  Future<int> insertRequest({
    required int studentId,
    required int tutorId,
    required String subject,
    required String preferredTime,
    required String sessionType,
  }) async {
    final db = await database;

    return await db.insert('tutoring_requests', {
      'student_id': studentId,
      'tutor_id': tutorId,
      'subject': subject,
      'preferred_time': preferredTime,
      'session_type': sessionType,
      'status': 'Pending',
    });
  }

  Future<List<Map<String, dynamic>>> getRequests() async {
    final db = await database;

    return await db.query('tutoring_requests');
  }
}
