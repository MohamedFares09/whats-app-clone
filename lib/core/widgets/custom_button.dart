import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants.dart';
import 'package:whats_app_clone/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.text, this.onPressed , this.style});
  final String? text;
  final void Function()? onPressed;
  final TextStyle? style;
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
          style:style ?? AppTextStyle.regular15,
        ),
      ),
    );
  }
}
