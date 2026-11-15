import 'package:flutter/material.dart';

/// Create a search field for tutors or subjects
class CustomSearchBar extends StatelessWidget {

  final TextEditingController controller;

  final ValueChanged<String> onChanged;

  const CustomSearchBar({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      onChanged: onChanged,

      decoration: const InputDecoration(
        hintText: 'Search tutor or subject...',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
    );
  }
}
