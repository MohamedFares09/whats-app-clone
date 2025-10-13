import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/splash/presentation/widgets/splash_view_two_body.dart';

class SplashViewTwo extends StatelessWidget {
  const SplashViewTwo({super.key});
  static const String route='splashViewTwo';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewTwoBody(),
    );
  }
}