import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhonsProduct extends StatelessWidget {
  const PhonsProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),
      body: Center(
        child: Text('NO PRODUCTS HERE',
          style: GoogleFonts.arefRuqaaInk(
              fontSize: 35,
              color: Colors.black87
          ),
        ),
      ),
    );
  }
}
