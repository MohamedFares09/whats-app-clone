import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyle.regular13.copyWith(
              color: Colors.black87, // اللون الأساسي للنص
              height: 1.4, // علشان يكون مريح في القراءة
            ),
            children: [
              const TextSpan(text: 'Read our '),
              TextSpan(
                text: 'Privacy Policy',
                style: AppTextStyle.regular13.copyWith(
                  color: Colors.blue, // أو AppColors.primary لو عندك لون أساسي
                  fontWeight: FontWeight.w600,
                ),
                recognizer: TapGestureRecognizer()
                 
              ),
              const TextSpan(text: '. Tap “Agree and continue” to accept the '),
              TextSpan(
                text: 'Terms of Service.',
                style: AppTextStyle.regular13.copyWith(
                  color: Colors.blue, // أو AppColors.primary
                  fontWeight: FontWeight.w600,
                ),
                recognizer: TapGestureRecognizer()
                  
              ),
            ],
          ),
        ),
      ),
    );
  }
}
