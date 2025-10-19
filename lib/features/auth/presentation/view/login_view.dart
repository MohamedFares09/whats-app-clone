import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/auth/presentation/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const route = 'loginview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: LoginViewBody()));
  }
}
