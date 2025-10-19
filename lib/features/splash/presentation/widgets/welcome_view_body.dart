import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';
import 'package:whats_app_clone/core/widgets/custom_button.dart';
import 'package:whats_app_clone/features/auth/presentation/view/login_view.dart';
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
            CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginView.route);
              },
              text: 'AGREE AND CONTINUE',
            ),
            Spacer(),
            TextFormAndFacebook(),
            SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
