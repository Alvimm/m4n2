import 'package:explore_mundo_app/pages/contato_page.dart';
import 'package:explore_mundo_app/pages/destinos_page.dart';
import 'package:explore_mundo_app/pages/pacotes_page.dart';
import 'package:explore_mundo_app/pages/sobre_nos_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> pages = [
    const DestinosPage(),
    const PacotesPage(),
    const ContatoPage(),
    const SobreNosPage(),
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF293b4b),
          toolbarHeight: 0,
          bottom: const TabBar(
            labelColor: Color(0xFFACA98B),
            dividerColor: Colors.transparent,
            indicatorColor: Color(0xFFACA98B),
            tabs: [
              Tab(icon: Icon(Icons.place_outlined),text: 'Destinos'),
              Tab(icon: Icon(Icons.favorite_outline), text: 'Pacotes'),
              Tab(icon: Icon(Icons.phone_outlined), text: 'Contato'),
              Tab(icon: Icon(Icons.info_outline), text: 'Sobre Nós'),
            ],
          ),
        ),
        body: TabBarView(
          children: pages,
        ),
        backgroundColor: const Color(0xFFACA98B),
      ),
    );
  }
}
