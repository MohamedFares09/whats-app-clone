import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text, this.onPressed});
  final String? text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text ?? 'Enter a Text Button',
          style: AppTextStyle.regular15,
        ),
      ),
    );
  }
}
