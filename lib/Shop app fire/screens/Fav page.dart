import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/screens/Fav%20Full.dart';
import 'package:last2/Shop%20app%20fire/screens/Fav%20empty.dart';

class Favpage extends StatelessWidget {
  List fav=[''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87
        ),
        title: Text('Favourite Products',
        style: GoogleFonts.arbutusSlab(
          color: Colors.black87,
          fontSize: 30
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: fav.isEmpty?Favempty():Favfull(),
    );
  }
}
