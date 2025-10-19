
import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';

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
