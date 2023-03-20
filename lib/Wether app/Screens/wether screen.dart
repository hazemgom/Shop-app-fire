import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/Wether%20app/Data%20Api/Wether%20Model.dart';
import 'package:last2/Wether%20app/Screens/search%20screen.dart';
import 'package:last2/Wether%20app/cubits/Weather%20Cubit.dart';
import 'package:last2/Wether%20app/cubits/Weather%20State.dart';
import 'package:provider/provider.dart';







class WetherScreen extends StatelessWidget{
  WetherModel? wetherdata;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Weather App',
        style: TextStyle(fontSize: 20,color: Colors.black87),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SearchSceen();
            }));
          }, icon: Icon(Icons.search,color: Colors.black87,))
        ],
      ),
      body: BlocBuilder<Weathercubit,Weatherstate>(builder: (context,state){
        if(state is Weatherloading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(state is Weathersucess){
          wetherdata=BlocProvider.of<Weathercubit>(context).wethermodel;
          return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      wetherdata!.getThemeColor(),
                      wetherdata!.getThemeColor()[300]!,
                      wetherdata!.getThemeColor()[300]!,



                    ]
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  BlocProvider.of<Weathercubit>(context).cityname!,style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold
                ),),
                Text(
                  BlocProvider.of<Weathercubit>(context).wethermodel!.data!.toString(),style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold
                ),),

                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Temp:${wetherdata!.temp.toInt()}',style: TextStyle(
                        fontSize: 30,fontWeight: FontWeight.bold
                    ),),
                    Column(
                      children: [
                        Text(
                          'maxtemp :${wetherdata!.maxtemp.toInt()}',style: TextStyle(
                          fontSize: 20,
                        ),),
                        Text(
                          'mintemp :${wetherdata!.mintemp.toInt()}',style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text(wetherdata !.weatherStateName,
                  style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          );

        }
        else if(state is Weathererror){
          return Text('Errrrrrot');
        }
        return Text('');
        

      },)
    );
  }
}
