import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20Bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20State.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

class Cartfull extends StatelessWidget {
Cartfull({required this.productModel});
ProductModel productModel;
List<ProductModel>products=[];
  @override
  Widget build(BuildContext context) {
  return BlocProvider(create: (context)=>Productcubit(),
  child: BlocConsumer<Productcubit,Productstate>(
    listener: (context,state){},
    builder: (context,state){
      var cubit=Productcubit.get(context);
     return Container(
        margin: EdgeInsets.only(bottom: 60),
        child: GridView.builder(
          clipBehavior: Clip.none,
          itemCount:products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              childAspectRatio: 3),
          itemBuilder: (context, index) {
            return Scaffold(
                body:Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20,left: 8,right: 8),
                  child: Container(
                    height: 100,

                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.black54),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                 productModel.image),
                                fit: BoxFit.fill,
                              )),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(productModel.title.substring(0,14)),
                                SizedBox(
                                  width: 220,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete_rounded,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(productModel.price.toString()),
                                SizedBox(width: 10,),
                                Text(r'$'),
                              ],
                            ),
                            SizedBox(height: 30,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Text('NUM OF PRODUCT'),
                                SizedBox(width: 40,),
                                Container(decoration: BoxDecoration(
                                    color: Colors.red
                                ),
                                    child: IconButton(onPressed: (){
                                      cubit.mincproduct();
                                    }, icon: Icon(Icons.minimize,))),
                                SizedBox(width: 20,),
                                Container(decoration: BoxDecoration(color: Colors.purpleAccent),
                                    child: Text(cubit.Countnum.toString())),
                                SizedBox(width: 20,),
                                Container(decoration: BoxDecoration(
                                    color: Colors.green
                                ),
                                    child: IconButton(onPressed: (){
                                      cubit.addproduct();
                                    }, icon: Icon(Icons.add,))),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),




                ));
          },

        ),
      );

    },
  ),

  );




  }
}
