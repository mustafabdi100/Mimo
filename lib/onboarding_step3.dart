import 'package:flutter/material.dart';
import 'step_indicator.dart';

class OnboardingStep3 extends StatefulWidget {
  @override
  _OnboardingStep3State createState() => _OnboardingStep3State();
}

class _OnboardingStep3State extends State<OnboardingStep3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding3.jpg', // Ensure this image is available in your assets
              fit: BoxFit.cover,
            ),
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ready to take control of your finances? Get started today!',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height:
                                1.22, // This is the line-height (29.26 / 24 = 1.22)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 37,
            left: 34,
            child: StepIndicator(currentStep: 3, totalSteps: 3),
          ),
          Positioned(
            top: 74,
            left: 283,
            child: GestureDetector(
              onTap: () {
                // Add your navigation logic here
              },
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
          ),
        ],
      ),
    );
  }
}
