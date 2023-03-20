import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/News%20-App/Dio%20helpers.dart';
import 'package:last2/News%20-App/screens/Business-screen.dart';
import 'package:last2/News%20-App/screens/Sports%20screen.dart';
import 'package:last2/News%20-App/screens/science%20screen.dart';
import 'package:last2/News%20-App/statesnews.dart';

class cubitnews extends Cubit<statesnews>{
  cubitnews() : super(inatialstatenews());
  static cubitnews get(context){
    return BlocProvider.of(context);
  }
  int currentindex=0;
  List<Widget> scrrens=[
    businessscreen(),
  sportsscreen(),
  sciencescreen(),
  ];
  List<BottomNavigationBarItem> items=[

BottomNavigationBarItem(
  icon: Icon(Icons.business),
  label: 'Business'
),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports),
        label: 'Sports'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.science),
        label: 'Science'
    ),

  ];
  void changeindex(index){
    currentindex=index;
    emit(changecurrent());
  }
  List<dynamic> business = [];

  void getBusiness()
  {


   Diohelper.getdata(
      url: 'v2/top-headlines',
      query:
      {
        'country':'eg',
        'category':'business',
        'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
      },
    ).then((value)
    {
      //print(value.data['articles'][0]['title']);
      business = value.data['articles'];
      print(business[0]['title']);
    emit(newsbussinessucceed());
    }).catchError((error){
      print(error.toString());
      emit(newsbussinesserror());

    });

  }

}
