import 'package:appscare/widgets/controllers/colors.dart';
import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/controllers/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        featureCard(
          bgColor: AppColors.lightPurple,
          icon: FaIcon(FontAwesomeIcons.brain, color: AppColors.boldPurple),
          title: 'Mood Tracking',
          description: 'Track your daily emotions and see patterns over time.',
        ),
        featureCard(
          bgColor: AppColors.green,
          icon: Icon(Icons.air, color: AppColors.aqua),
          title: 'Breathing Exercise',
          description: 'Guided breathing to reduce stress and find calm',
        ),
        featureCard(
          bgColor: AppColors.yellow,
          icon: Icon(Icons.favorite_rounded, color: AppColors.gold),
          title: 'Meditation',
          description: 'Peaceful guided meditation for any time of day',
        ),
        featureCard(
          bgColor: AppColors.lighterBlue,
          icon: FaIcon(FontAwesomeIcons.bookOpen,
              color: AppColors.extraBoldPurple),
          title: 'Daily Journal',
          description: 'Express yourself with daily prompts and reflections.',
        ),
      ],
    );
  }
}

class BuildWhatYouIllGet extends StatelessWidget {
  const BuildWhatYouIllGet({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableText(
        text: 'What you\'ll get',
        size: SizeConfig.text(16),
        color: Colors.black,
        weight: FontWeight.w500);
  }
}

Widget featureCard({
  required Color bgColor,
  required Widget icon,
  required String title,
  required String description,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: EdgeInsets.all(SizeConfig.width(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(SizeConfig.width(8)),
            width: SizeConfig.width(55),
            height: SizeConfig.width(55),
            child: Center(child: icon),
          ),
          SizedBox(width: SizeConfig.width(12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: SizeConfig.width(15),
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  description,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: SizeConfig.width(13),
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
