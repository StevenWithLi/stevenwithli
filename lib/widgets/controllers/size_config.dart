import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

  // Responsive Text
  static double text(double size) => (size / 375) * screenWidth;

  // Responsive Height
  static double height(double value) => (value / 812) * screenHeight;

  // Responsive Width
  static double width(double value) => (value / 375) * screenWidth;

  // Responsive Radius
  static double radius(double r) => (r / 375) * screenWidth;

  // Responsive Icon
  static double icon(double size) => (size / 375) * screenWidth;

  // Responsive Padding
  static EdgeInsets paddingH(double value) =>
      EdgeInsets.symmetric(horizontal: width(value));

  static EdgeInsets paddingV(double value) =>
      EdgeInsets.symmetric(vertical: height(value));

  static EdgeInsets paddingAll(double value) => EdgeInsets.all(width(value));
}

// GAP – Responsive SizedBox helper
class Gap {
  static Widget v(double h) => SizedBox(height: SizeConfig.height(h));

  static Widget h(double w) => SizedBox(width: SizeConfig.width(w));
}
