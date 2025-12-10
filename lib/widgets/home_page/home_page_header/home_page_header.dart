import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/controllers/text.dart';
import 'package:appscare/widgets/home_page/home_page_header/home_page_theme.dart';
import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReusableText(
              text: 'Hey how are you feeling today',
              size: 22,
              color: Colors.black,
              weight: FontWeight.w500),
          Row(
            children: [
              ReusableText(
                  text: 'STEVEN LI',
                  size: 20,
                  color: Colors.black,
                  weight: FontWeight.bold),
              HomePageTheme(),
            ],
          )
        ],
      ),
    );
  }
}
