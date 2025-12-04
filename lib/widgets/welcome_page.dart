import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/front_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const WelcomePage());
}

class AppColors {
  static const purple = Color(0xFF9673FE);
  static const grey = Color(0xFFD9D9D9);
  static const blue = Color(0xff665FEB);
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTitle(),
                _buildSubtitle(),
                _buildLottie(),
                _buildExploreButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'MindCare',
      style: TextStyle(
        fontSize: SizeConfig.text(35),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        letterSpacing: -2,
      ),
    );
  }

  Widget _buildSubtitle() {
    return Text(
      'Take a moment for yourself',
      style: TextStyle(
        fontSize: SizeConfig.text(20),
        fontFamily: 'Montserrat',
        color: Colors.black87,
        letterSpacing: -1.25,
      ),
    );
  }

  Widget _buildLottie() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.height(20)),
      child: Lottie.asset(
        'assets/lotties/HandsUps_Logo.json',
        repeat: false,
      ),
    );
  }

  Widget _buildExploreButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.height(20)),
      height: SizeConfig.height(48),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => FrontPage()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explore',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.text(18),
              ),
            ),
            SizedBox(width: SizeConfig.width(6)),
            Icon(Icons.arrow_forward_rounded,
                size: SizeConfig.height(28), color: Colors.white),
          ],
        ),
      ),
    );
  }
}
