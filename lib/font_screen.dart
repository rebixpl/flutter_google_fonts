import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontScreen extends StatefulWidget {
  @override
  _FontScreenState createState() => _FontScreenState();
}

class _FontScreenState extends State<FontScreen> {

  String font = 'Arapey';

  List<String> fonts = ['Arvo', 'Prata', 'Orbitron', 'Ultra', 'Monoton'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fonts")),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Google Fonts',
                style: GoogleFonts.macondo(
                  fontSize: 32.0,
                ),
              ),
              Text(
                'Google Fonts',
                style: GoogleFonts.getFont(
                  "Arvo",
                  fontSize: 32.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
