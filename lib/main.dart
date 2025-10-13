import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/helper_functions/on_generate_route.dart';
import 'package:whats_app_clone/features/splash/presentation/view/splash_view_one.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashViewOne.route,
    );
  }
}
