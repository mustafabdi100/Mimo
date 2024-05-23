import 'package:flutter/material.dart';
import 'dart:async';
import 'splash_screen.dart';
import 'onboarding_step1.dart';
import 'onboarding_step2.dart';
import 'onboarding_step3.dart';
import 'register_login_toggle.dart';
import 'profile_picture.dart'; // Import the ProfilePicture widget
import 'background_container.dart'; // Import BackgroundContainer
import 'verification_form.dart'; // Import the VerificationForm widget
import 'homepage.dart'; // Import HomePage
import 'bottom_navigation.dart'; // Import BottomNavigation

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

class FormContainerScreen extends StatefulWidget {
  @override
  _FormContainerScreenState createState() => _FormContainerScreenState();
}

class _FormContainerScreenState extends State<FormContainerScreen> {
  bool isRegister = true;
  bool isVerification = false;

  void handleToggle(bool isRegister) {
    setState(() {
      this.isRegister = isRegister;
      this.isVerification = false;
    });
  }

  void handleRegister() {
    setState(() {
      isVerification = true;
    });
  }

  void handleLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FormContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfilePicture(),
                    const SizedBox(height: 20),
                    isVerification
                        ? VerificationForm(
                            onCodeChanged: (code) {
                              // Handle code change
                            },
                          )
                        : RegisterLoginToggle(
                            onToggle: handleToggle,
                          ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Space between form and button
              ElevatedButton(
                onPressed: () {
                  if (isRegister) {
                    handleRegister();
                  } else {
                    handleLogin();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4DBFA3),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: Text(isVerification
                    ? 'Verify'
                    : isRegister
                        ? 'Register'
                        : 'Login'),
              ),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF5B716D).withOpacity(0.9),
        border: Border.all(color: Color(0xFF4DBFA3)),
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 450),
      height: 500,
      child: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
