import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/auth/presentation/view/login_view.dart';
import 'package:whats_app_clone/features/auth/presentation/view/otp_view.dart';
import 'package:whats_app_clone/features/splash/presentation/view/splash_view_one.dart';
import 'package:whats_app_clone/features/splash/presentation/view/splash_view_two.dart';
import 'package:whats_app_clone/features/splash/presentation/view/welcome_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashViewOne.route:
      return MaterialPageRoute(
        builder: (context) {
          return const SplashViewOne();
        },
      );

    case SplashViewTwo.route:
      return MaterialPageRoute(
        builder: (context) {
          return const SplashViewTwo();
        },
      );
    case WelcomeView.route:
      return MaterialPageRoute(
        builder: (context) {
          return const WelcomeView();
        },
      );
    case LoginView.route:
      return MaterialPageRoute(
        builder: (context) {
          return const LoginView();
        },
      );
    case OtpView.route:
      return MaterialPageRoute(
        builder: (context) {
          return const OtpView();
        },
      );

    default:
      return MaterialPageRoute(
        builder: (context) {
          return const Scaffold(body: Center(child: Text('No Route Found')));
        },
      );
  }
}
