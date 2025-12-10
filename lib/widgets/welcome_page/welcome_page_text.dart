import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/controllers/text.dart';
import 'package:flutter/material.dart';

class WelcomePageText extends StatelessWidget {
  const WelcomePageText({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableText(
        text: 'MindCare',
        size: SizeConfig.text(35),
        color: Colors.black87,
        weight: FontWeight.bold);
  }
}

class WelcomePageTextSecond extends StatelessWidget {
  const WelcomePageTextSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableText(
        text: 'Take a moment for yourself',
        size: SizeConfig.text(20),
        color: Colors.black87,
        weight: FontWeight.w500);
  }
}
