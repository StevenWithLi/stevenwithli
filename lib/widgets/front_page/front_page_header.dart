import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';

class BuildMindCareText extends StatelessWidget {
  const BuildMindCareText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.width(30),
        top: SizeConfig.height(8),
      ),
      child: Text(
        '🌱 MindCare',
        style: TextStyle(
          fontSize: SizeConfig.text(20),
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
      ),
    );
  }
}

class BuildDailyMentalText extends StatelessWidget {
  const BuildDailyMentalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.width(30),
        top: SizeConfig.height(3.5),
      ),
      child: Text(
        'Your daily mental wellness companion',
        style: TextStyle(
          color: Colors.grey,
          fontSize: SizeConfig.text(15),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class BuildWelcomeText extends StatelessWidget {
  const BuildWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: SizeConfig.width(30)),
      child: Text(
        'WELCOME STEVEN LI',
        style: TextStyle(
          letterSpacing: 0.2,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: SizeConfig.text(28),
        ),
      ),
    );
  }
}
