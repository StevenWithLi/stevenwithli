import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';

Widget contentContainer({
  final double? height,
  required List<Color> colors,
  required String upperText,
  required String bottomText,
  required double width,
  required double margin,
  required double padding,
  required double borderRadius,
  required bool circleOnLeft,
}) {
  return Center(
    child: Container(
      width: width,
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.symmetric(horizontal: margin),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT circle
              if (circleOnLeft)
                Container(
                  width: SizeConfig.width(20),
                  height: SizeConfig.width(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),

              SizedBox(width: SizeConfig.width(12)),

              Expanded(
                child: Text(
                  upperText,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: SizeConfig.text(20),
                  ),
                ),
              ),

              // RIGHT circle
              if (!circleOnLeft)
                Container(
                  width: SizeConfig.width(20),
                  height: SizeConfig.width(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
          SizedBox(height: SizeConfig.height(5)),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.width(8)),
            child: Text(
              bottomText,
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.text(15),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
