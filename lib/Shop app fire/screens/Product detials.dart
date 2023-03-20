import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20Bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20State.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';


class Productdetails extends StatelessWidget {
  Productdetails({required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context)=>Productcubit()..getproduct(),

    child:BlocConsumer<Productcubit,Productstate>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=Productcubit.get(context);

          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(margin: EdgeInsets.only(bottom: 30),
              child: CustomScrollView(slivers: [
                SliverAppBar(
                  elevation: 0,
                  title: Text('Product detials',
                    style: GoogleFonts.arefRuqaaInk(
                      fontSize: 30,
                      fontWeight:FontWeight.bold,
                      color: Colors.white
                  ),),
                  expandedHeight: 200,
                  pinned: true,
                  centerTitle: true,
                  backgroundColor: Color(0xff2A5078),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          height: 200,

                          decoration:
                          BoxDecoration(color:  Color(0xffA7B6C8)),

                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(product.image,
                                  width: 200,
                                  height: 150,

                                )



                              ],

                            ),
                          )),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          height: 300,
                          decoration:
                          BoxDecoration(color: Color(0xffA7B6C8)),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Description',
                                    style: GoogleFonts.arimaMadurai(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade800
                                  ),),
                                  SizedBox(height: 40,),
                                  Text('Name :  ${product.title.substring(0,14)}  ',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20
                                    ),),
                                  SizedBox(height: 40,),
                                  Text('Price :  ${product.price.toString()}  ',
                                    style: GoogleFonts.arimaMadurai(
                                        color: Colors.black87,
                                        fontSize: 20
                                    ),),
                                  SizedBox(height: 20,),
                                  Text('Descripation :  ${product.description.substring(0,70)}  ',
                                    style: GoogleFonts.arimaMadurai(
                                        color: Colors.black87,
                                        fontSize: 20
                                    ),),




                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                ),

              ]),
            ),
            bottomSheet: bottomsheet(),
          );

      },

    )

    );
  }

}
Widget bottomsheet(){
  return Container(
    margin: EdgeInsets.only(top: 10,),
    decoration: BoxDecoration(color: Colors.grey),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){},
                child: Text('ADD TO CART'),),
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){},
                child: Text('BUY NOW'),),
            ),
          ),

          Expanded(


              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: MaterialButton(onPressed: (){},
                    child:Text('ADD TO FAVOURITE'),
                  )),

          )
        ],

      ),
    ),
  );
}
