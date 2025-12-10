import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/front_page/front_page_main.dart';
import 'package:appscare/widgets/front_page/front_page_footer.dart';
import 'package:appscare/widgets/front_page/front_page_header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FrontPage());
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          SizeConfig.init(context);
          return Scaffold(
            body: SizedBox(
              width: SizeConfig.screenWidth,
              child: ListView(
                children: [
                  // Header
                  BuildMindCareText(),
                  BuildDailyMentalText(),
                  BuildWelcomeText(),
                  Gap.v(15),
                  ContentContainerCircleLeft(),
                  Gap.v(25),
                  // Main
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: SizeConfig.width(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BuildWhatYouIllGet(),
                        Gap.v(5),
                        ListCard(),
                      ],
                    ),
                  ),
                  // Footer
                  Gap.v(30),
                  ContentContainerCircleRight(),
                  Gap.v(25),
                  BuildGetStartedButtons(),
                  Gap.v(15),
                  BuildNoAccountText()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
