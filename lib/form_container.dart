import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final Widget child;

  const FormContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: 16.0), // Add margin on both sides
      decoration: BoxDecoration(
        color: const Color(0xFF5B716D).withOpacity(0.9),
        border: Border.all(color: Color(0xFF4DBFA3)), // Update border color
        borderRadius: BorderRadius.circular(16.0), // Increase border radius
      ),
      width: double.infinity, // Make it take full width
      constraints: BoxConstraints(maxWidth: 450), // Max width for large screens
      height: 550,
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
