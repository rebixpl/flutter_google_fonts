import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:googlefonts/font_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google Fonts Example",
      theme: ThemeData(
        // fontFamily: "Satisfy",
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.badScriptTextTheme(),
      ),
      home: FontScreen(),
    );
  }
}
