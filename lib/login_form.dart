// login_form.dart
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final String nationalId;
  final String pin;
  final ValueChanged<String> onNationalIdChanged;
  final ValueChanged<String> onPinChanged;

  const LoginForm({
    Key? key,
    required this.nationalId,
    required this.pin,
    required this.onNationalIdChanged,
    required this.onPinChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter National ID Number",
              style: TextStyle(
                  fontSize: 14, color: Colors.white, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'National ID Number',
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'Montserrat',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xFF869794)),
                ),
                filled: true,
                fillColor: Color(0xFF869794),
              ),
              onChanged: onNationalIdChanged,
            ),
            SizedBox(height: 16),
            Text(
              "Enter your Pin",
              style: TextStyle(
                  fontSize: 14, color: Colors.white, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Pin',
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'Montserrat',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Color(0xFF869794)),
                ),
                filled: true,
                fillColor: Color(0xFF869794),
              ),
              onChanged: onPinChanged,
            ),
            SizedBox(height: 8),
            Text(
              "Please enter your ID and Pin to Login",
              style: TextStyle(
                  fontSize: 12, color: Colors.white, fontFamily: 'Montserrat'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
