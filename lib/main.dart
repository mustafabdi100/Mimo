import 'package:flutter/material.dart';
import 'dart:async';
import 'splash_screen.dart';
import 'onboarding_step1.dart';
import 'onboarding_step2.dart';
import 'onboarding_step3.dart';
import 'register_login_toggle.dart';
import 'profile_picture.dart'; // Add this import

void main() {
  runApp(MimoApp());
}

class MimoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIMO',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashScreenWrapper(),
    );
  }
}

class SplashScreenWrapper extends StatefulWidget {
  @override
  _SplashScreenWrapperState createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingStep1Wrapper()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

class OnboardingStep1Wrapper extends StatefulWidget {
  @override
  _OnboardingStep1WrapperState createState() => _OnboardingStep1WrapperState();
}

class _OnboardingStep1WrapperState extends State<OnboardingStep1Wrapper> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Timer(Duration(milliseconds: 1500), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingStep2Wrapper()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingStep1();
  }
}

class OnboardingStep2Wrapper extends StatefulWidget {
  @override
  _OnboardingStep2WrapperState createState() => _OnboardingStep2WrapperState();
}

class _OnboardingStep2WrapperState extends State<OnboardingStep2Wrapper> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Timer(Duration(milliseconds: 1500), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingStep3Wrapper()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingStep2();
  }
}

class OnboardingStep3Wrapper extends StatefulWidget {
  @override
  _OnboardingStep3WrapperState createState() => _OnboardingStep3WrapperState();
}

class _OnboardingStep3WrapperState extends State<OnboardingStep3Wrapper> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Timer(Duration(milliseconds: 1500), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => FormContainerScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingStep3();
  }
}

class FormContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FormContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfilePicture(), // Add the ProfilePicture widget here
              const SizedBox(height: 20), // Add some spacing
              RegisterLoginToggle(),
            ],
          ),
        ),
      ),
    );
  }
}

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
          color: const Color(0xFF5B716D).withOpacity(0.9),
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
