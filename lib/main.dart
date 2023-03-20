import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:last2/Services/Dio.dart';

import 'package:last2/Shop%20app%20fire/Shered%20Perf/Shared%20Theme.dart';


import 'package:last2/Store%20App/Cubits/Cubit%20Store.dart';
import 'package:last2/Store%20App/Cubits/Store%20state.dart';
import 'package:last2/Wether%20app/Screens/search%20screen.dart';
import 'package:last2/user%20App/user%20screen.dart';

import 'News -App/newsapp.dart';



void main()async{
  DioHelper.init();
WidgetsFlutterBinding.ensureInitialized();
bool isdark=await Themeshared.getdata(key: 'Icontheme');
 runApp( MyApp(isdark));
}

class MyApp extends StatelessWidget {

MyApp(this.isdark);

bool  ?isdark;

  // This widget is the root of your application.
  @override
  Widget build( context) {

   return BlocProvider(create:(context)=>Storecubit()..Changethemedata(fromshard: isdark!),

   child: BlocConsumer<Storecubit,Storestate>(
     listener: (context,state){},
     builder: (context,state){
       return   MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'Shop',


         theme:Storecubit.get(context).Icontheme?ThemeData.dark():ThemeData.light(),
         home:SearchSceen (),
       );
     },

   ),
   );

//Storecubit.get(context).Icontheme?ThemeData.dark():ThemeData.light(
//
//         ),

        }




  }




