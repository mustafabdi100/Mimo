import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final Color currentStepColor;

  StepIndicator({
    required this.currentStep,
    required this.totalSteps,
    this.currentStepColor = const Color(0xFF98FF98), // Mint green color
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps, (index) {
        double width = (MediaQuery.of(context).size.width -
                2 * 34 -
                (totalSteps - 1) * 4) /
            totalSteps; // Calculate width
        return Row(
          children: [
            Container(
              width: width,
              height: 4,
              decoration: BoxDecoration(
                color: currentStep > index ? currentStepColor : Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            if (index < totalSteps - 1) SizedBox(width: 4),
          ],
        );
      }),
    );
  }
}
