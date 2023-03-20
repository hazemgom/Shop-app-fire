import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20Bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20State.dart';
import 'package:last2/Shop%20app%20fire/screens/Cart%20Empty.dart';
import 'package:last2/Shop%20app%20fire/screens/Cart%20Full.dart';
import 'package:last2/conts/colors.dart';

import '../../Store App/Services/Product Model.dart';

class Cartpage extends StatelessWidget {
   Cartpage({Key? key}) : super(key: key);
List <ProductModel>products=[];
ProductModel ?productModel;
  @override
  Widget build(BuildContext context) {
   return BlocProvider(create: (context)=>Productcubit(),
   child: BlocConsumer<Productcubit,Productstate>(
     listener: (context,state){},
     builder: (context,state){
       var cubit=Productcubit.get(context);
       return Scaffold(
         backgroundColor: Colors.white,
         appBar: AppBar(
             backgroundColor: Colors.transparent,
             title: Text('Cart Of Items',style: GoogleFonts.arefRuqaaInk(
               fontSize: 35,
               color: Colors.black87
             ),),

             elevation: 0,

             actions: [IconButton(onPressed: (){}, icon: Icon(Icons.delete_rounded,color: Colors.red,))]
         ),
         body:Container(
    margin: EdgeInsets.only(bottom: 60),
    child: GridView.builder(
    clipBehavior: Clip.none,
    itemCount: cubit.Items.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,
    mainAxisSpacing: 10,
    childAspectRatio: 3),
    itemBuilder: (context, index) {
      return Cartfull(productModel: products[index],);
    }
    )
         ),
         bottomSheet: checkitem(),
       );
     },

   ),
   );
  }
  Widget checkitem(){
    return Container(height: 50,

      decoration: BoxDecoration
        (
        color: Colors.grey,
        border: Border(top:BorderSide(color: Colors.grey,width: .5))
      ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(

            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30)
                ),


                  child: MaterialButton(onPressed: (){},child: Text('    Check out    '),)),
              SizedBox(width: 220,),
              Text(
                'Total :',
                style: GoogleFonts.anaheim(
                  color: Colors.black54,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 20,),
              Text(
                r'0$:',
                style: TextStyle(
                    color: Colors.black87,
                  fontSize: 20

                ),
              )
            ],
          ),
        ),
    );

  }
}
