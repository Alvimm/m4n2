import 'package:explore_mundo_app/screens/home_screen.dart';
import 'package:explore_mundo_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primary),
        useMaterial3: true,

        textTheme: GoogleFonts.urbanistTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: MyColors.textPrimary, displayColor: MyColors.textPrimary),
        ),
        
      ),
      home: const HomeScreen(),
    );
  }
}

