import 'package:appscare/widgets/Welcome_page/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class ThemeController extends GetxController {
//   RxBool isDark = false.obs;
//
//   void toggleTheme(bool value) {
//     isDark.value = value;
//     Get.changeTheme(value ? ThemeData.dark() : ThemeData.light());
//   }
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final themeC = Get.put(ThemeController());
//
//     return Obx(() => GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           themeMode: themeC.isDark.value ? ThemeMode.dark : ThemeMode.light,
//           theme: ThemeData.light(),
//           darkTheme: ThemeData.dark(),
//           home: const HomePageTheme(),
//         ));
//   }
// }
//
// class HomePageTheme extends StatelessWidget {
//   const HomePageTheme({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final themeC = Get.find<ThemeController>();
//
//     return Scaffold(
//       appBar: AppBar(title: const Text('Theme Switcher')),
//       body: Center(
//         child: Obx(() => SwitchListTile(
//               title: const Text('Dark Mode'),
//               value: themeC.isDark.value,
//               onChanged: themeC.toggleTheme,
//             )),
//       ),
//     );
//   }
// }
