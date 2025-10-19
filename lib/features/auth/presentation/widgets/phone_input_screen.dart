import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneInputScreen extends StatelessWidget {
  const PhoneInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntlPhoneField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide()),
            ),
            initialCountryCode: 'EG', // الدولة الافتراضية (India)
            onChanged: (phone) {
              print(phone.completeNumber); // +91xxxxxxxxx
            },
          ),
          const SizedBox(height: 8),
          const Text(
            'Carrier charges may apply',
            style: TextStyle(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
