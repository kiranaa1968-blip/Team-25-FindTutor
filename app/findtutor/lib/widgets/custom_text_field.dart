import 'package:flutter/material.dart';

/// Create input fields for text, such as Email, Password, and Name.
class CustomTextField extends StatelessWidget {

  final TextEditingController controller;

  final String label;

  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      obscureText: obscureText,

      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
