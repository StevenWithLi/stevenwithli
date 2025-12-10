import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageTheme extends StatefulWidget {
  const HomePageTheme({super.key});

  @override
  State<HomePageTheme> createState() => _HomePageThemeState();
}

class _HomePageThemeState extends State<HomePageTheme> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      home: FloatingActionButton(onPressed: () {
        Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
      }),
    );
  }
}
