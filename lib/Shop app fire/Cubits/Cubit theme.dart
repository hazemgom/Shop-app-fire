import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/state%20theme.dart';

class Themecubit extends Cubit<Themestate>{
  Themecubit() : super(inialtheme()  );
  static  Themecubit get(context)=>BlocProvider.of(context);
  bool Icontheme = false;
  IconData light = Icons.sunny;
  IconData dark = Icons.dark_mode;
  void Changethemedata(){

    Icontheme=!Icontheme;
    emit(changetheme() );
  }



}