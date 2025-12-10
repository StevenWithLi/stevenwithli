import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const ReusableText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: weight,
          fontFamily: 'Montserrat'),
    );
  }
}

class ReusableTextNormal extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const ReusableTextNormal({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
