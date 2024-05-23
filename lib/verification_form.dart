import 'package:flutter/material.dart';

class VerificationForm extends StatelessWidget {
  final ValueChanged<String> onCodeChanged;
  final List<TextEditingController> controllers =
      List.generate(5, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(5, (_) => FocusNode());

  VerificationForm({Key? key, required this.onCodeChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verification Code",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Please enter the 5-digit verification code sent to your phone number & email",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) {
                return SizedBox(
                  width: 40,
                  child: TextField(
                    controller: controllers[index],
                    focusNode: focusNodes[index],
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      counterText: '',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 4) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.length == 1 && index == 4) {
                        FocusScope.of(context).unfocus();
                      }

                      // Concatenate the code from all text fields
                      String code = controllers
                          .map((controller) => controller.text)
                          .join();
                      onCodeChanged(code);
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
