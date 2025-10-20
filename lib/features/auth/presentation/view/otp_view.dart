import 'package:flutter/material.dart';
import 'package:whats_app_clone/features/auth/presentation/widgets/otp_view_body.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});
  static const route = 'otp view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpViewBody(),
    );
  }
}
