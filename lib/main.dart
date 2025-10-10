import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppClone());
}
class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('WhatsApp Clone Home Screen'),
        ),
      ),
    );
  }
}