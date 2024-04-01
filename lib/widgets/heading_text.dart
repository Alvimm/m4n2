import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  const HeadingText({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: MyColors.textPrimary,
        fontSize: 25,
      ),
    );
  }
}