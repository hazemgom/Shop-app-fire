import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/screens/Category%20page.dart';
import 'package:last2/conts/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,

      appBar: AppBar(
        backgroundColor: Color(0xffA7B6C8),
        elevation: 1,
        title: Text('Categories ',style: GoogleFonts.arimaMadurai(color: Colors.black87,fontSize: 30),),
      ),
      body: Categorypage(),

    );
  }
}
