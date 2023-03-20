import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/screens/Bottom%20Nav%20Page.dart';
import 'package:last2/Shop%20app%20fire/screens/Feeds%20page.dart';
import 'package:last2/Shop%20app%20fire/screens/Laptops%20Product.dart';
import 'package:last2/Shop%20app%20fire/screens/PhonsProduct.dart';


class Categorypage extends StatelessWidget {

   int ?index;
   List images=[
     'assets/images/th.jfifclothes.jfif',
      'assets/images/lap.jfif',

     'assets/images/th.jfifphons.jfif',



   ];
   List texts=[
     'Clothes',
     'Labtops',
     'phons',


   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context,index){

        return  Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 40),
              color:  Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(onPressed: (){
                  if(index==0){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Feedspage();
                    }));
                  }
                  if(index==1){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LaptopsProduct();
                    }));
                  }
                  if(index==2){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return PhonsProduct();
                    }));
                  }
                },
                  child: Container(
                    height:150,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color(0xffA7B6C8),


                    ),
                    child: Column(
                      children: [
                        Image.asset(images[index],height: 100,),
                        SizedBox(height: 10,),
                        Text(texts[index],
                          style: GoogleFonts.arimaMadurai(
                              color: Colors.black87,fontSize: 20),)

                      ],
                    ),

                  ),
                ),
              ),
            ),

        );
      },
        scrollDirection: Axis.vertical,
      itemCount: images.length,)
    );
  }
}
