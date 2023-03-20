import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20Bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20State.dart';
import 'package:last2/Shop%20app%20fire/Models/HomeModel.dart';


import 'package:last2/Store%20App/Services/All%20Products.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';
import 'package:last2/conts/colors.dart';


import 'Product detials.dart';

class Feedspage extends StatelessWidget {

   ProductModel? product;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87
        ),

        title: Text(
          'Products',
        style: GoogleFonts.arefRuqaaInk(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
        fontSize: 40),),
        centerTitle: true,

        backgroundColor: Colors.transparent,
        elevation: 0,
      ),


        body: BlocProvider(
          create: (BuildContext context) => Productcubit()..getproduct(),
          child: BlocConsumer<Productcubit, Productstate>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = Productcubit.get(context);
              return FutureBuilder<List<ProductModel>>(
                  future: AllProducts().getallproduct(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      print('dattttttttttta');
                     List<ProductModel>products=cubit.products;
                     List<HomeModel>home=cubit.homemodel;
                      return Container(
                        margin: EdgeInsets.only(top: 30,bottom: 30),
                        child: GridView.builder(
                          clipBehavior: Clip.none,
                          itemCount: products.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 70,
                              childAspectRatio: 1.3),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 60),

                                child: Stack(clipBehavior: Clip.none,fit: StackFit.loose,children: [
                                  Container(
                                    height: 400,
                                    width: 200,


                                    decoration: BoxDecoration(


                                        borderRadius: BorderRadius.circular(20),



                                        ),

                                    child: Card(color: Color(0xffA7B6C8),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[index].title.substring(0, 14),
                                              style: GoogleFonts.arefRuqaaInk(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,

                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  (products[index].price.toString()+  r'$') ,
                                                  style: GoogleFonts.arefRuqaaInk(
                                                      color: Colors.yellow[900],
                                                      fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      print(products[index].id);

                                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The product added to cart successfully'),
                                                         ));
                                                    },
                                                    icon: Icon(
                                                      Icons.add_shopping_cart,
                                                      color: Colors.green,
                                                    )),
                                                IconButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder: (context) {
                                                               return Productdetails(product:products[index],);
                                                      }));
                                                    },
                                                    icon: Icon(
                                                      Icons.more_horiz,
                                                      color: Colors.black87,
                                                    ))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: -70,

                                      child: Image.network(
                                        cubit.products[index]!.image,
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.contain,
                                      ))
                                ]),

                            );
                          },
                        ),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  });
            },
          ),
        ));
  }
}
