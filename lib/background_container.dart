import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  BackgroundContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/backgroundauth.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Color(0xFFF1EFE8)
                .withOpacity(0.9), // Background color with some transparency
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 150, // Adjust the size as needed
                ),
                SizedBox(height: 20),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
