import 'package:explore_mundo_app/utils/colors.dart';
import 'package:explore_mundo_app/widgets/banner_destinations.dart';
import 'package:explore_mundo_app/widgets/category_icon_btn.dart';
import 'package:explore_mundo_app/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DestinationsScreen extends StatelessWidget {
  const DestinationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondary,
      // appBar:
      body: ListView(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
        ),
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10, bottom: 30),
            child: SearchBar(
              hintText: 'Pesquisar Destinos',
            ),
          ),

          HeadingText(heading: 'Destinos'),
          BannerDestinations(),
          HeadingText(
            heading: 'Categorias',
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryIconBtn(icon: Icons.beach_access_outlined),
              CategoryIconBtn(icon: Ionicons.boat_outline),
              CategoryIconBtn(icon: Ionicons.leaf_outline),
              CategoryIconBtn(icon: Ionicons.snow_outline),
            ],
          ),
          // etc.
        ],
      ),
    );
  }
}
