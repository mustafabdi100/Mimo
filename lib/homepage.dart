import 'package:flutter/material.dart';
import 'bottom_navigation.dart'; // Ensure this import is present

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Homepage',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar:
          BottomNavigation(), // Ensure this is the correct class name
    );
  }
}
