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
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Google Fonts',
                style: TextStyle(fontSize: 32.0,),
              ),
              Text(
                'Google Fonts',
                style: GoogleFonts.getFont(
                  font,
                  fontSize: 32.0,
                ),
              ),
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return FlatButton(
                    padding: EdgeInsets.all(8.0),
                    onPressed: () => setState(() {
                      font = fonts[index];
                    }),
                    child: Text(
                      fonts[index],
                      style: GoogleFonts.getFont(
                        fonts[index],
                        color: Colors.white,
                        fontSize: 32.0,
                      ),
                    ),
                    color: Colors.black,
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: fonts.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
