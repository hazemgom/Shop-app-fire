import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('SEARCH',
        style: GoogleFonts.archivoNarrow(
          color: Colors.black87,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            onSubmitted: (data){


            },

            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 35),
              border:OutlineInputBorder(),
              label: Text('Search'),
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter Product Name',
            ),
          ),
        ),
      ),
    );
  }
}
