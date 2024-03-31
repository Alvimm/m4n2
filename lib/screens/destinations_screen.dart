import 'package:explore_mundo_app/utils/colors.dart';
import 'package:explore_mundo_app/widgets/banner_destinations.dart';
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
        padding: const EdgeInsets.only(top: 30, left:15,),
        children: <Widget>[
          const Padding(
            padding:  EdgeInsets.only(right: 10, bottom: 30),
            child: SearchBar(
              hintText: 'Pesquisar Destinos',
            ),
          ),

          const Text('Destinos',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  )),
          const BannerDestinations(),
          const Text('Categorias',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 50, right: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Icons.beach_access_outlined,
                    size: 50, color: MyColors.primary),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 50, right: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Ionicons.boat_outline,
                    size: 50, color: MyColors.primary),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 50, right: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Ionicons.leaf_outline,
                    size: 50, color: MyColors.primary),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Ionicons.snow_outline,
                    size: 50, color: MyColors.primary),
              ),
            ],
          ),
          // etc.
        ],
      ),
    );
  }
}
