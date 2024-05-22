import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EFE8),
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
