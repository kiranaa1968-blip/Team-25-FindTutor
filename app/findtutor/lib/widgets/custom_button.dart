import 'package:flutter/material.dart';

/// Create a button that can be reused across multiple pages.
class CustomButton extends StatelessWidget {

  final String text;

  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
