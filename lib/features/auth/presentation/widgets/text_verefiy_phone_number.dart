import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';

class TextVerefiyPhoneNumber extends StatelessWidget {
  const TextVerefiyPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: AppTextStyle.regular13.copyWith(
            color: Colors.black87, // اللون الأساسي للنص
            height: 1.4, // علشان يكون مريح في القراءة
          ),
          children: [
            const TextSpan(
              text: 'WhatsApp will need to verify your phone number. ',
              style: AppTextStyle.regular13,
            ),

            TextSpan(
              text: 'What’s  my number?',
              style: AppTextStyle.regular13.copyWith(color: Color(0xff002AC0)),
            ),
          ],
        ),
      ),
    );
  }
}
