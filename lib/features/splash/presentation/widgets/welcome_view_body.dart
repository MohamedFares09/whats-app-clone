import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';
import 'package:whats_app_clone/features/splash/presentation/widgets/terms_text.dart';
import 'package:whats_app_clone/features/splash/presentation/widgets/text_form_and_facebook.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 84),
            Text('Welcome to WhatsApp', style: AppTextStyle.blod30),
            SizedBox(height: 70),
            Image.asset(
              'assets/images/welcome_image.png',
              width: 250,
              height: 250,
            ),
            SizedBox(height: 55),
            TermsText(),
            SizedBox(height: 40),
            CustomButton(text: 'AGREE AND CONTINUE'),
            Spacer(),
            TextFormAndFacebook(),
            SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text ?? 'Enter a Text Button',
          style: AppTextStyle.regular15,
        ),
      ),
    );
  }
}
