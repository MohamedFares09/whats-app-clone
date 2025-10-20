import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';
import 'package:whats_app_clone/core/widgets/custom_button.dart';
import 'package:whats_app_clone/features/auth/presentation/view/otp_view.dart';
import 'package:whats_app_clone/features/auth/presentation/widgets/phone_input_screen.dart';
import 'package:whats_app_clone/features/auth/presentation/widgets/text_verefiy_phone_number.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 54),
              child: Column(
                children: [
                  const SizedBox(height: 90),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enter your phone number',
                        style: AppTextStyle.medaium20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.list),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  const TextVerefiyPhoneNumber(),
                  const SizedBox(height: 66),
                  const PhoneInputScreen(),
                  const SizedBox(height: 200), // مساحة كافية فوق الزر
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 56,
                  left: 177,
                  right: 177,
                ),
                child: CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, OtpView.route);
                  },
                  text: 'Next',
                  style: AppTextStyle.semiblod11,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
