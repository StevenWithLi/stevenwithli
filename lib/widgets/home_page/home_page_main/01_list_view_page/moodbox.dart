import 'package:appscare/widgets/controllers/size_config.dart';
import 'package:flutter/material.dart';

class MoodBox extends StatelessWidget {
  final String emoji;
  final VoidCallback? onTap;

  const MoodBox({
    super.key,
    required this.emoji,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(SizeConfig.width(7)),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          emoji,
          style: TextStyle(fontSize: SizeConfig.text(30)),
        ),
      ),
    );
  }
}
