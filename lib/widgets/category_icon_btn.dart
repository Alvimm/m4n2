import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryIconBtn extends StatelessWidget {
  final IconData icon;
  const CategoryIconBtn({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top:30, right: 10),
      child: IconButton(
        icon: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: MyColors.primary,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: MyColors.background, width: 2)
            ),
            child: Icon(icon, size: 30, color: MyColors.secondary)),
        onPressed: () {},
      ),
    );
  }
}