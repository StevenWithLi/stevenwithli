import 'package:appscare/widgets/Front_Page/front_page_container.dart';
import 'package:appscare/widgets/controllers/buttons.dart';
import 'package:appscare/widgets/controllers/colors.dart';
import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/controllers/text.dart';
import 'package:appscare/widgets/home_page/home_page.dart';
import 'package:flutter/material.dart';

class ContentContainerCircleLeft extends StatelessWidget {
  const ContentContainerCircleLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return contentContainer(
      colors: [AppColors.extraBoldPurple, AppColors.secondPrimary],
      upperText: 'Start Your Wellness Journey',
      bottomText:
      'Take care of your mental health with guided tools, daily check-ins, and mindful practices.',
      width: SizeConfig.screenWidth,
      padding: SizeConfig.width(12),
      margin: SizeConfig.width(20),
      borderRadius: 22,
      circleOnLeft: true,
    );
  }
}

class ContentContainerCircleRight extends StatelessWidget {
  const ContentContainerCircleRight({super.key});

  @override
  Widget build(BuildContext context) {
    return contentContainer(
      colors: [AppColors.primary, AppColors.extraBoldPurple],
      upperText: 'Practices',
      bottomText:
      'Build a consistent wellness routine with daily streaks and gentle reminders.',
      width: SizeConfig.screenWidth,
      padding: SizeConfig.width(12),
      margin: SizeConfig.height(20),
      borderRadius: 22,
      circleOnLeft: false,
    );
  }
}


class BuildGetStartedButtons extends StatelessWidget {
  const BuildGetStartedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButtons(
      label: 'Get Started',
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      },
      colors: [AppColors.primary, AppColors.boldPurple],
    );
  }
}

class BuildNoAccountText extends StatelessWidget {
  const BuildNoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ReusableText(
            text: 'Free • Private • No account needed',
            size: SizeConfig.text(16),
            color: Colors.grey,
            weight: FontWeight.w500));
  }
}
