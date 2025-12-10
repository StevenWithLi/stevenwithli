import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/controllers/text.dart';
import 'package:appscare/widgets/home_page/home_page_main/01_list_view_page/carousel_slider.dart';
import 'package:appscare/widgets/home_page/home_page_main/01_list_view_page/moodbox.dart';
import 'package:flutter/material.dart';
import 'package:appscare/widgets/controllers/colors.dart';

class MainListViewOne extends StatefulWidget {
  const MainListViewOne({super.key});

  @override
  State<MainListViewOne> createState() => _MainListViewOneState();
}

class _MainListViewOneState extends State<MainListViewOne> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [AppColors.primary, AppColors.extraBoldPurple],
            ),
          ),
          padding: EdgeInsets.all(SizeConfig.width(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableTextNormal(
                text: 'Daily Streak',
                size: 20,
                color: Colors.white,
                weight: FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReusableText(
                    text: '7 Days',
                    size: 30,
                    color: Colors.white,
                    weight: FontWeight.bold,
                  ),
                  ReusableTextNormal(
                    text: '✨',
                    size: 40,
                    color: Colors.white,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Quick Mood Check
        Container(
          padding: EdgeInsets.only(
            top: SizeConfig.height(20),
            left: SizeConfig.width(20),
            bottom: SizeConfig.height(6),
          ),
          child: ReusableTextNormal(
            text: 'Quick Mood Check',
            size: 18,
            color: Colors.black,
            weight: FontWeight.w500,
          ),
        ),

        Container(
          padding: EdgeInsets.all(SizeConfig.width(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MoodBox(emoji: '😊'),
              MoodBox(emoji: '😌'),
              MoodBox(emoji: '😐'),
              MoodBox(emoji: '😔'),
              MoodBox(emoji: '😰'),
            ],
          ),
        ),

        // Featured Meditation
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.width(30),
            vertical: SizeConfig.height(8),
          ),
          child: ReusableTextNormal(
            text: 'Featured Meditation',
            size: 18,
            color: Colors.black,
            weight: FontWeight.w500,
          ),
        ),

        Container(
          margin: EdgeInsets.only(
            right: SizeConfig.width(20),
            left: SizeConfig.width(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: SizedBox(
                  height: SizeConfig.height(180),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(SizeConfig.height(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableTextNormal(
                                text: 'Morning Peace',
                                size: 18,
                                color: Colors.white,
                                weight: FontWeight.w600,
                              ),
                              ReusableTextNormal(
                                text: '10 Min • Guided',
                                size: 15,
                                color: Colors.white,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          margin: EdgeInsets.all(SizeConfig.width(20)),
                          width: SizeConfig.width(40),
                          height: SizeConfig.height(40),
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: SizeConfig.width(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.height(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: SizeConfig.height(135),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(right: SizeConfig.width(8)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: SizeConfig.height(135),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.only(left: SizeConfig.width(8)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Daily Tips
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          height: SizeConfig.height(120),
          margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.width(20),
            vertical: SizeConfig.width(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: SizeConfig.width(30),
                      right: SizeConfig.width(10),
                      top: SizeConfig.width(15),
                      bottom: SizeConfig.width(5),
                    ),
                    child: const Icon(Icons.laptop_mac),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: SizeConfig.width(30),
                      top: SizeConfig.width(15),
                      bottom: SizeConfig.width(5),
                    ),
                    child: ReusableTextNormal(
                      text: 'Daily Tips',
                      size: 20,
                      color: Colors.black,
                      weight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              CarouselSliders(),
            ],
          ),
        ),
      ],
    );
  }
}
