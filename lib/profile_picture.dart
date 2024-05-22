// profile_picture.dart

import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(4.0), // Border width
        decoration: BoxDecoration(
          color: Colors.transparent, // Border is outside of this color
          shape: BoxShape.circle,
          border: Border.all(
            color: Color(0xFF4DBFA3),
            width: 4.0,
          ),
        ),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
