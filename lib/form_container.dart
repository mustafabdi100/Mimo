import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  final Widget child;

  const FormContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 48,
      top: 189,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF5B716D),
          border: Border.all(),
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: 295,
        height: 358,
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
