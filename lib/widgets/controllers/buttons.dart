import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final List<Color> colors;
  final Color textColor;
  final double radius;

  const AppButtons({
    super.key,
    required this.label,
    required this.onPressed,
    required this.colors,
    this.textColor = Colors.white,
    this.radius = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.height(8), horizontal: SizeConfig.width(20)),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(
            vertical: SizeConfig.height(8),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onPressed,
        child: Text(label,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.text(20))),
      ),
    );
  }
}
