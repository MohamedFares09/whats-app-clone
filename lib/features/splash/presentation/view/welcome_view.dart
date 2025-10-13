import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/splash/presentation/widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  static const String route = 'welcomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: WelcomeViewBody()));
  }
}
