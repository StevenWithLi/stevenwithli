import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/welcome_page/welcome_page_button.dart';
import 'package:appscare/widgets/welcome_page/welcome_page_lottie.dart';
import 'package:appscare/widgets/welcome_page/welcome_page_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomePage());
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
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.width(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WelcomePageText(),
                WelcomePageTextSecond(),
                WelcomePageLottie(),
                WelcomePageButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
