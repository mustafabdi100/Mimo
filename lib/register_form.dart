// register_form.dart

import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  final String nationalId;
  final String phoneNumber;
  final ValueChanged<String> onNationalIdChanged;
  final ValueChanged<String> onPhoneNumberChanged;

  const RegisterForm({
    Key? key,
    required this.nationalId,
    required this.phoneNumber,
    required this.onNationalIdChanged,
    required this.onPhoneNumberChanged,
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
              "Enter Phone Number",
              style: TextStyle(
                  fontSize: 14, color: Colors.white, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '0700 *** 000',
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
              onChanged: onPhoneNumberChanged,
            ),
          ],
        ),
      ),
    );
  }
}
