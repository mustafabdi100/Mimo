import 'package:flutter/material.dart';
import 'register_form.dart';
import 'login_form.dart';

class RegisterLoginToggle extends StatefulWidget {
  final ValueChanged<bool> onToggle;

  const RegisterLoginToggle({Key? key, required this.onToggle})
      : super(key: key);

  @override
  _RegisterLoginToggleState createState() => _RegisterLoginToggleState();
}

class _RegisterLoginToggleState extends State<RegisterLoginToggle> {
  bool isRegister = true;

  void toggleAuthType() {
    setState(() {
      isRegister = !isRegister;
      widget.onToggle(isRegister);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFF869794),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          height: 55,
          width: 255,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleButton(
                text: 'Register',
                isSelected: isRegister,
                onPressed: toggleAuthType,
              ),
              SizedBox(width: 10.0),
              ToggleButton(
                text: 'Login',
                isSelected: !isRegister,
                onPressed: toggleAuthType,
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        isRegister
            ? RegisterForm(
                nationalId: '',
                phoneNumber: '',
                onNationalIdChanged: (value) {},
                onPhoneNumberChanged: (value) {},
              )
            : LoginForm(
                nationalId: '',
                pin: '',
                onNationalIdChanged: (value) {},
                onPinChanged: (value) {},
              ),
      ],
    );
  }
}

class ToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const ToggleButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.5,
      height: 35,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: isSelected ? Color(0xFF1D6E57) : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: Color(0xFF4DBFA3),
              width: 2.0,
            ),
          ),
          elevation: 0.0,
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
