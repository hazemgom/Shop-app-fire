

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/Weather Cubit.dart';



class SearchSceen extends StatelessWidget {





String ?Cityname;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Search a Country',
          style: TextStyle(fontSize: 20,color: Colors.black87),),
      ),
      body: Center(
        child: TextField(
          onSubmitted: (data)async{
            Cityname=data;
           BlocProvider.of<Weathercubit>(context).getweather(cityname: Cityname!);
            BlocProvider.of<Weathercubit>(context).cityname=Cityname;
           Navigator.pop(context);
          },
          decoration: InputDecoration(
            hintText: 'Enter Conuntry',
            label: Text('Search'),
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20)
          ),
        ),
      ),
    );
  }
}

