class TutoringRequest {
  int? id;
  int studentId;
  int tutorId;
  String subject;
  String preferredTime;
  String sessionType;
  String status;

  TutoringRequest({
    this.id,
    required this.studentId,
    required this.tutorId,
    required this.subject,
    required this.preferredTime,
    required this.sessionType,
    this.status = 'Pending',
  });
}
