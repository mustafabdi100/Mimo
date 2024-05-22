import 'package:flutter/material.dart';
import 'step_indicator.dart';

class OnboardingStep1 extends StatefulWidget {
  @override
  _OnboardingStep1State createState() => _OnboardingStep1State();
}

class _OnboardingStep1State extends State<OnboardingStep1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/onboarding1.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF4B645F), // Solid color at 0%
                  Color(0x4046AE94), // 25% opacity color at 100%
                ],
                stops: [
                  0.0, // Starting point
                  1.0, // Ending point
                ],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 7,
                child: Container(),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello!',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Welcome to MIMO, your all-in-one financial wallet!',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 37,
            left: 34,
            child: StepIndicator(currentStep: 1, totalSteps: 3),
          ),
          Positioned(
            top: 74,
            left: 283,
            child: Container(
              padding: EdgeInsets.only(top: 10),
              width: 45,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                ),
              ),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
