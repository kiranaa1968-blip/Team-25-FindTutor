class Student {
  int? id;
  String name;
  String email;
  List<String> subjects;

  Student({
    this.id,
    required this.name,
    required this.email,
    this.subjects = const [],
  });
}
