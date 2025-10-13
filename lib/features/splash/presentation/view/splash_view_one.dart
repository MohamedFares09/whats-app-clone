import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/splash/presentation/widgets/splash_view_one_body.dart';

class SplashViewOne extends StatelessWidget {
  const SplashViewOne({super.key});
  static const String route = 'splashviewone';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewOneBody());
  }
}
