import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:appscare/widgets/home_page/home_page_footer.dart';
import 'package:appscare/widgets/home_page/home_page_header/home_page_header.dart';
import 'package:appscare/widgets/home_page/home_page_main/01_list_view_page/main_list_view_one.dart';
import 'package:appscare/widgets/home_page/home_page_main/02_list_view_page/main_list_view_two.dart';
import 'package:appscare/widgets/home_page/home_page_main/03_list_view_page/main_list_view_three.dart';
import 'package:appscare/widgets/home_page/home_page_main/04_list_view_page/main_list_view_four.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // int customPurple = 0xFF9673FE;
    // int customBlue = 0xff665FEB;
    return DefaultTabController(
      length: 4,
      child: MaterialApp(
        home: Scaffold(
          // Header
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(SizeConfig.height(70)),
            child: HomePageHeader(),
          ),
          body: Expanded(
              child: TabBarView(children: [
            MainListViewOne(),
            MainListViewTwo(),
            MainListViewThree(),
            MainListViewFour(),
          ])),
          bottomNavigationBar: HomePageFooter(),
        ),
      ),
    );
  }
}
