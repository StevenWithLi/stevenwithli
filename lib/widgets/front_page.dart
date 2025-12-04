import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const FrontPage());
}

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class AppColors {
  static const purple = Color(0xFF9673FE);
  static const grey = Color(0xFFD9D9D9);
  static const blue = Color(0xff665FEB);
  static const lightPurple = Color(0x80A78BFA);
  static const boldPurple = Color(0xff7B5CF8);
  static const aqua = Color(0xFF2A6057);
  static const green = Color(0xCC2DD4BF);
  static const yellow = Color(0xffFDE68A);
  static const gold = Color(0xFFC8A20E);
  static const extraBoldPurple = Color(0xFF5222AF);
  static const lighterblue = Color(0xFFB1B3FD);
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            width: SizeConfig.screenWidth,
            color: Colors.white70,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Padding(
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
                    ),

                    Padding(
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
                    ),

                    Padding(
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
                    ),

                    SizedBox(height: SizeConfig.height(15)),

                    // Wellness Journey Card
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(SizeConfig.width(12)),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [AppColors.blue, AppColors.purple]),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: SizeConfig.width(320),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: SizeConfig.width(20),
                                  height: SizeConfig.width(20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: SizeConfig.width(15)),
                                Expanded(
                                  child: Text(
                                    'Start Your Wellness Journey',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.text(20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.width(12),
                                  top: SizeConfig.height(6)),
                              child: Text(
                                'Take care of your mental health with guided tools, daily check-ins, and mindful practices.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.width(15),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: SizeConfig.height(25)),

                    // Feature Section
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.width(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What you\'ll get',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.text(16),
                            ),
                          ),
                          SizedBox(height: SizeConfig.height(10)),
                          featureCard(
                            bgColor: AppColors.lightPurple,
                            icon: FaIcon(FontAwesomeIcons.brain,
                                color: AppColors.boldPurple),
                            title: 'Mood Tracking',
                            description:
                                'Track your daily emotions and see patterns over time.',
                          ),
                          featureCard(
                            bgColor: AppColors.green,
                            icon: Icon(Icons.air, color: AppColors.aqua),
                            title: 'Breathing Exercise',
                            description:
                                'Guided breathing to reduce stress and find calm',
                          ),
                          featureCard(
                            bgColor: AppColors.yellow,
                            icon: Icon(Icons.favorite_rounded,
                                color: AppColors.gold),
                            title: 'Meditation',
                            description:
                                'Peaceful guided meditation for any time of day',
                          ),
                          featureCard(
                            bgColor: AppColors.lighterblue,
                            icon: FaIcon(FontAwesomeIcons.bookOpen,
                                color: AppColors.extraBoldPurple),
                            title: 'Daily Journal',
                            description:
                                'Express yourself with daily prompts and reflections.',
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: SizeConfig.height(30)),

                    // Daily Practice Card
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: SizeConfig.width(330),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [AppColors.blue, AppColors.purple]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Daily Practices',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: SizeConfig.text(16),
                                  ),
                                ),
                                Container(
                                  width: SizeConfig.width(20),
                                  height: SizeConfig.width(20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: SizeConfig.height(5)),
                            Text(
                              'Build a consistent wellness routine with daily streaks and gentle reminders.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: SizeConfig.height(35)),

                    Center(
                      child: SizedBox(
                        width: SizeConfig.width(330),
                        height: SizeConfig.height(45),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()),
                            );
                          },
                          child: Text(
                            'Get Started!',
                            style: TextStyle(
                              fontSize: SizeConfig.text(16.5),
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: SizeConfig.height(26)),

                    // Footer
                    Center(
                      child: Text(
                        'Free • Private • No account needed',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
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
