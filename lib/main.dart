import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:victors_portfolio/screens/home/home_screen.dart';
import 'package:victors_portfolio/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Victor\'s Portfolio',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme()
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //   .apply(bodyColor: Colors.white)
        //   .copyWith(
        //   bodyText1: TextStyle(color: bodyTextColor),
        //   bodyText2: TextStyle()
        // )
      ),
      home: const HomeScreen(),
    );
  }
}