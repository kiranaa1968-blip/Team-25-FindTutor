class Tutor {
  int? id;
  int studentId;
  String description;
  List<String> courses;
  List<String> availability;

  Tutor({
    this.id,
    required this.studentId,
    required this.description,
    required this.courses,
    required this.availability,
  });
}
