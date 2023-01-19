import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: OTPTextField(
        length: 5,
        width: MediaQuery.of(context).size.width,
        fieldWidth: 80,
        style: TextStyle(fontSize: 17),
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldStyle: FieldStyle.underline,
        onCompleted: (pin) {
          print("Completed: " + pin);
        },
      ),
    );
  }
}
