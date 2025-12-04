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
  static double text(double size) {
    return (size / 375) * screenWidth; // 375 = width iPhone X baseline
  }

  // Responsive Height
  static double height(double value) {
    return (value / 812) * screenHeight; // 812 = height iPhone X baseline
  }

  // Responsive Width
  static double width(double value) {
    return (value / 375) * screenWidth;
  }

  // Responsive Radius
  static double radius(double r) {
    return (r / 375) * screenWidth;
  }

  // Responsive Icon
  static double icon(double size) {
    return (size / 375) * screenWidth;
  }

  // Responsive Padding (horizontal)
  static EdgeInsets paddingH(double value) {
    return EdgeInsets.symmetric(horizontal: width(value));
  }

  // Responsive Padding (vertical)
  static EdgeInsets paddingV(double value) {
    return EdgeInsets.symmetric(vertical: height(value));
  }

  // Responsive Padding all sides
  static EdgeInsets paddingAll(double value) {
    return EdgeInsets.all(width(value));
  }
}