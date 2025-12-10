import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';

class HomePageFooter extends StatelessWidget {
  const HomePageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: SizeConfig.height(65),
        child: TabBar(
          labelColor: Colors.blue,
          dividerColor: Colors.transparent,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              child: SizedBox(
                child: Icon(
                  Icons.home_outlined,
                  size: 38,
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                child: Icon(
                  Icons.show_chart,
                  size: 38,
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                child: Icon(
                  Icons.auto_stories,
                  size: 38,
                ),
              ),
            ),
            Tab(
              child: SizedBox(
                child: Icon(
                  Icons.person,
                  size: 38,
                ),
              ),
            ),
          ],
        ));
  }
}
