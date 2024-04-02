import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  const HeadingText({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20, left: 10),
      child: Text(
        heading,
        style:GoogleFonts.urbanist(
          fontWeight: FontWeight.w700,
          color: MyColors.textPrimary,
          fontSize: 30,
        ),
      ),
    );
  }
}