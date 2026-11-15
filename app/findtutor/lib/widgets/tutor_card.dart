import 'package:flutter/material.dart';

/// Display tutor information in a card format
class TutorCard extends StatelessWidget {

  final String name;

  final String subject;

  final double rating;

  final String sessionType;

  const TutorCard({
    super.key,
    required this.name,
    required this.subject,
    required this.rating,
    required this.sessionType,
  });
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: ListTile(

        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),

        title: Text(name),

        subtitle: Text('$subject • $sessionType'),

        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            Text(rating.toString()),
          ],
        ),
      ),
    );
  }
}
