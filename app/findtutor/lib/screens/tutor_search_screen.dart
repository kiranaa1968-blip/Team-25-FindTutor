import 'package:flutter/material.dart';

class TutorSearchScreen extends StatefulWidget {
  const TutorSearchScreen({super.key});

  /// Tutor Search Screen State
  @override
  State<TutorSearchScreen> createState() =>
      _TutorSearchScreenState();
}

/// Manage data and functionality for the tutor search page
class _TutorSearchScreenState extends State<TutorSearchScreen> {

  final TextEditingController searchController =
      TextEditingController();

  /// Select Type
  String selectedType = 'All';

  /// Tutor name EX.
  final List<Map<String, dynamic>> tutors = [
    {
      'name': 'Alex Morgan',
      'subject': 'Mathematics',
      'rating': 4.8,
      'type': 'Online',
      'availability': 'Monday, Wednesday',
    },
    {
      'name': 'Jamie Lee',
      'subject': 'English',
      'rating': 4.7,
      'type': 'In-person',
      'availability': 'Tuesday, Thursday',
    },
    {
      'name': 'Taylor Chen',
      'subject': 'Biology',
      'rating': 4.9,
      'type': 'Online',
      'availability': 'Saturday, Sunday',
    },
  ];

  List<Map<String, dynamic>> get filteredTutors {

    String keyword = searchController.text.toLowerCase();

    return tutors.where((tutor) {

      bool matchesSearch =
          tutor['name'].toLowerCase().contains(keyword) ||
          tutor['subject'].toLowerCase().contains(keyword);

      /// Check the type of study
      bool matchesType = selectedType == 'All' ||
          tutor['type'] == selectedType;

      return matchesSearch && matchesType;
    }).toList();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Find Tutors'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              controller: searchController,

              onChanged: (value) {
                setState(() {});
              },

              decoration: const InputDecoration(
                hintText: 'Search tutor or subject...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            /// Session Type
            DropdownButtonFormField<String>(
              value: selectedType,
              decoration: const InputDecoration(
                labelText: 'Session Type',
                border: OutlineInputBorder(),
              ),

              /// Available learning category options
              items: const [
                'All',
                'Online',
                'In-person',
              ].map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type),
                );
              }).toList(),

              onChanged: (value) {
                setState(() {
                  selectedType = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            Expanded(
              child: filteredTutors.isEmpty

                  ? const Center(
                      child: Text('No tutors found.'),
                    )

                  : ListView.builder(
                      itemCount: filteredTutors.length,

                      itemBuilder: (context, index) {

                        final tutor = filteredTutors[index];

                        return Card(
                          margin: const EdgeInsets.only(
                            bottom: 12,
                          ),

                          child: ListTile(
                            leading: const CircleAvatar(
                              child: Icon(Icons.person),
                            ),

                            title: Text(tutor['name']),

                            subtitle: Text(
                              '${tutor['subject']}\n'
                              '★ ${tutor['rating']} | '
                              '${tutor['type']}\n'
                              'Available: ${tutor['availability']}',
                            ),

                            isThreeLine: true,

                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ),

                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(tutor['name']),

                                    content: Text(
                                      'Subject: ${tutor['subject']}\n'
                                      'Rating: ${tutor['rating']}\n'
                                      'Session: ${tutor['type']}\n'
                                      'Availability: '
                                      '${tutor['availability']}',
                                    ),

                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Close'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
