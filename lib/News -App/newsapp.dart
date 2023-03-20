import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/News%20-App/cubitnews.dart';
import 'package:last2/News%20-App/statesnews.dart';

class newsapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   return BlocProvider(create: (BuildContext context)=>cubitnews()..getBusiness(),
     child: BlocConsumer<cubitnews,statesnews>(
       listener: (BuildContext context,state){},
       builder: (BuildContext context,state){
         var cubit=cubitnews.get(context);
         return Scaffold(
           appBar: AppBar(
             title: Text('News App'),
             actions: [
               IconButton(onPressed: (){}, icon: Icon(Icons.search,)),
               IconButton(onPressed: (){



               }, icon: Icon(Icons.brightness_4_outlined,))

             ],
           ),

           body: cubit.scrrens[cubit.currentindex],
           bottomNavigationBar: BottomNavigationBar(
             currentIndex: cubit.currentindex,
             onTap: (index){
               cubit.changeindex(index);
             },
             items: cubit.items,
           ),
         );

       },
     ),





   );
  }
}
