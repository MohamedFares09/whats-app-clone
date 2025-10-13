import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/core/utils/app_images.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SvgPicture.asset(Assets.imagesSvgsLeftImageSplashView),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Image.asset('assets/images/logo.png', width: 70, height: 70),
                SizedBox(height: 18),
                Text("WhatsApp", style: AppTextStyle.medaium43),
              ],
            ),
            SvgPicture.asset(Assets.imagesSvgsRightImageSplashView),
          ],
        ),
        Spacer(),
        Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: const Duration(seconds: 3),
            builder: (context, value, _) => CircularProgressIndicator(
              value: value,
              strokeWidth: 10,
              backgroundColor: Colors.teal.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation(Colors.teal),
            ),
          ),
        ),
        SizedBox(height: 18),
        Text(
          'Loading...',
          style: AppTextStyle.medaium24.copyWith(color: kPrimaryColor),
        ),
        SizedBox(height: 65),
      ],
    );
  }
}
