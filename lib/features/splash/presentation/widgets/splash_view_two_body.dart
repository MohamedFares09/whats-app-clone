import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/splash/presentation/view/welcome_view.dart';


import 'package:whats_app_clone/features/splash/presentation/widgets/splash_view_body.dart';

class SplashViewTwoBody extends StatefulWidget {
  const SplashViewTwoBody({super.key});

  @override
  State<SplashViewTwoBody> createState() => _SplashViewTwoBodyState();
}

class _SplashViewTwoBodyState extends State<SplashViewTwoBody> {
  @override
  void initState() {
    navigateToWelcomeView();
    super.initState();
  }
  Future<void> navigateToWelcomeView()async{
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, WelcomeView.route);
  }
  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }
}
