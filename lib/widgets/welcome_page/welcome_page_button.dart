import 'package:appscare/widgets/Front_Page/front_page.dart';
import 'package:appscare/widgets/controllers/buttons.dart';
import 'package:appscare/widgets/controllers/colors.dart';
import 'package:flutter/material.dart';

class WelcomePageButton extends StatelessWidget {
  const WelcomePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButtons(
        label: 'Explore!',
        colors: [
          AppColors.secondPrimary,
          AppColors.extraBoldPurple,
        ],
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => FrontPage()));
        });
  }
}
