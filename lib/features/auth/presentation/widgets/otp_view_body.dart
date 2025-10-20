import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';
import 'package:whats_app_clone/core/widgets/custom_button.dart';
import 'package:whats_app_clone/features/auth/presentation/widgets/otp_code_verfication.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Verify your phone number',
            style: AppTextStyle.medaium20,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            'We have sent you an SMS with a code.',
            style: AppTextStyle.regular15,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),

          // ✅ مربعات إدخال الكود OTP
          OtpCodeVerfication(),
          const SizedBox(height: 40),

          // ✅ زر التحقق
          CustomButton(
            text: 'Verify',
            onPressed: () {
              
            },
          ),
          const SizedBox(height: 20),

          // ✅ زر إعادة الإرسال
          TextButton(
            onPressed: () {
              // TODO: هنا تضيف منطق إعادة إرسال الكود
            },
            child: const Text('Resend code'),
          ),
        ],
      ),
    );
  }
}
