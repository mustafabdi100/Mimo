import 'package:flutter/material.dart';
import 'step_indicator.dart';

class OnboardingStep2 extends StatefulWidget {
  @override
  _OnboardingStep2State createState() => _OnboardingStep2State();
}

class _OnboardingStep2State extends State<OnboardingStep2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/onboarding2.jpg',
              fit: BoxFit.cover,
              width: double.infinity, // Ensure the image fills the width
              height: double.infinity, // Ensure the image fills the height
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
                          'Explore powerful features to manage your money with ease.',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height:
                                1.22, // This is the line-height (29.26 / 24 = 1.22)
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Features:\n. Quick and secure transactions\n. Budget tracking\n. Bill payments',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            height:
                                1.22, // This is the line-height (19.5 / 16 = 1.22)
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
            child: StepIndicator(currentStep: 2, totalSteps: 3),
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
