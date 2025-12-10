import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePageLottie extends StatelessWidget {
  const WelcomePageLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.height(20)),
      child: Lottie.asset(
        'assets/lotties/HandsUps_Logo.json',
        repeat: false,
      ),
    );
  }
}
