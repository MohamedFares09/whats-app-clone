import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_clone/core/utils/app_images.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';
import 'package:whats_app_clone/features/splash/presentation/view/splash_view_two.dart';

class SplashViewOneBody extends StatefulWidget {
  const SplashViewOneBody({super.key});

  @override
  State<SplashViewOneBody> createState() => _SplashViewOneBodyState();
}

class _SplashViewOneBodyState extends State<SplashViewOneBody> {
  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, SplashViewTwo.route);
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                Image.asset('assets/images/logo.png', width: 50, height: 50),
                SizedBox(height: 18),
                Text("WhatsApp", style: AppTextStyle.medaium35),
              ],
            ),
            SvgPicture.asset(Assets.imagesSvgsRightImageSplashView),
          ],
        ),
        Spacer(),
        TextFormAndFacebook(),
        SizedBox(height: 65),
      ],
    );
  }
}

class TextFormAndFacebook extends StatelessWidget {
  const TextFormAndFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('form', style: AppTextStyle.regular13),
        Text('FACEBOOK', style: AppTextStyle.regular15),
      ],
    );
  }
}
