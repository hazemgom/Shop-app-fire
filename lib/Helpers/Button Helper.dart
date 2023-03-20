import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonhelper extends StatelessWidget {
   Buttonhelper({this.onchange,this.title});
   String ?title;
   VoidCallback ?onchange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.green.shade300,
            borderRadius: BorderRadius.circular(60)
      ),
      child: MaterialButton(
        onPressed: onchange,


          child: Center(

            child: Text(
                title!,style:
            GoogleFonts.arya(
                fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20)),)
          ),


    );
  }
}
