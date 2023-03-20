import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfiledhelper extends StatelessWidget {
   Textfiledhelper({this.label,this.ontap,this.hinttext}) ;
   String ?hinttext;
   Function(String) ?ontap;
   String ?label;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: (data){

        if(data!.isEmpty){

          return 'Filed is requird';
        }
      },
      onChanged: ontap,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black87
            )
        ),
        hintText: hinttext,
          hintStyle: TextStyle(
            color: Colors.white
          ),
          label: Text('$label'),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue
              )
          )
      ),
    );
  }
}
