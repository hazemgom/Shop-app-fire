import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20Bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20State.dart';
import 'package:last2/Shop%20app%20fire/screens/Cart%20Page.dart';
import 'package:last2/Shop%20app%20fire/screens/Product%20detials.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

class Feedproducts extends StatelessWidget {


Feedproducts( {required this.product});

  ProductModel product;
  List<ProductModel>products=[];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>Productcubit(),
    child: BlocConsumer<Productcubit,Productstate>(
      listener: (context,state){},
      builder: (context,state){
var cubit=Productcubit.get(context);
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
        child: Stack(

            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.grey, boxShadow: [
                  BoxShadow(color: Colors.blue, blurRadius: 20, spreadRadius: 0)
                ]),
                height: 120,
                width: 200,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title
                              .substring(0, 14),
                          style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.price.toString(),
                              style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                                onPressed: () {
                                  cubit.Addproducttocart(products[index]);
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Cartpage();
                                  }));
                                },
                                icon: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.green,
                                )),
                            IconButton(
                                onPressed: () {

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

                  top: -60,
                  child: Image.asset(
                    product!.image,
                    height: 50,
                    width: 50,
                  )
              )
            ]),
      );
    },
  ),
);

      },
    ),
    );
  }
}
