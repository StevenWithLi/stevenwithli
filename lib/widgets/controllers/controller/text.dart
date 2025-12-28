import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final TextAlign? align;
  final TextStyle? styleOverride;

  const ReusableText({
    super.key,
    required this.text,
    this.size,
    this.weight,
    this.align,
    this.styleOverride,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = Theme.of(context).textTheme.bodyLarge!;

    return Text(
      text,
      textAlign: align,
      style: styleOverride ??
          baseStyle.copyWith(
            fontSize: size ?? baseStyle.fontSize,
            fontWeight: weight ?? baseStyle.fontWeight,
            fontFamily: 'Montserrat',
          ),
    );
  }
}

//
// class ReusableTextNormal extends StatelessWidget {
//   final String text;
//   final double? size;
//   final FontWeight? weight;
//   final TextAlign? align;
//
//
//   const ReusableTextNormal({
//     super.key,
//     required this.text,
//     this.size,
//     this.weight,
//     this.align,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final baseStyle = Theme.of(context).textTheme.bodyMedium!;
//
//     return Text(
//       text,
//       textAlign: align,
//       style: baseStyle.copyWith(
//         fontSize: size ?? baseStyle.fontSize,
//         fontWeight: weight ?? baseStyle.fontWeight,
//       ),
//     );
//   }
// }

class ReusableTextNormal extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? weight;
  final TextAlign? align;
  final TextStyle? styleOverride;

  const ReusableTextNormal({
    super.key,
    required this.text,
    this.size,
    this.weight,
    this.align,
    this.styleOverride,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = Theme.of(context).textTheme.bodyMedium!;

    return Text(
      text,
      textAlign: align,
      style: styleOverride ??
          baseStyle.copyWith(
            fontSize: size ?? baseStyle.fontSize,
            fontWeight: weight ?? baseStyle.fontWeight,
            fontFamily: 'Montserrat',
          ),
    );
  }
}
