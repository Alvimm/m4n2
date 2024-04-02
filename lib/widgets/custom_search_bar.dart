// ignore_for_file: library_private_types_in_public_api

import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final ValueChanged<String> onSearch;
  const CustomSearchBar({super.key, required this.onSearch});

  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      widget.onSearch(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SearchBar(
        controller: _controller,
        textCapitalization: TextCapitalization.words,
        hintText: 'Pesquisar pacotes',
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
