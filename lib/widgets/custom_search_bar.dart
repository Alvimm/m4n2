import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 30),
      child: SearchBar(
        textCapitalization: TextCapitalization.words,
        hintText: 'Pesquisar Destinos',
        hintStyle: MaterialStateProperty.all(
          const TextStyle(
            color: MyColors.hintText,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(MyColors.secondary),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: MyColors.primary,
          ),
        ),
      ),
    );
  }
}
