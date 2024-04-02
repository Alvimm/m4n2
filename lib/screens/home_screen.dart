import 'package:explore_mundo_app/screens/contact_screen.dart';
import 'package:explore_mundo_app/screens/destinations_screen.dart';
import 'package:explore_mundo_app/screens/travel_packages_screen.dart';
import 'package:explore_mundo_app/screens/about_screen.dart';
import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = [
    const DestinationsScreen(),
    const TravelPackagesScreen(),
    const ContactScreen(),
    const AboutScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: screens.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primary,
          toolbarHeight: 0,
          bottom: const TabBar(
            labelColor: MyColors.secondary,
            dividerColor: MyColors.primary,
            indicatorColor: MyColors.secondary,
            tabs: [
              Tab(icon: Icon(Ionicons.map_outline),text: 'Destinos'),
              Tab(icon: Icon(Ionicons.cube_outline), text: 'Pacotes'),
              Tab(icon: Icon(Ionicons.call_outline), text: 'Contato'),
              Tab(icon: Icon(Icons.info_outline), text: 'Sobre'),
            ],
          ),
        ),
        body: TabBarView(
          children: screens,
        ),
        backgroundColor: MyColors.secondary,
      ),
    );
  }
}
