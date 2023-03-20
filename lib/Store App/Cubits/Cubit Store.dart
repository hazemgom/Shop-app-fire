import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/Shop%20app%20fire/Shered%20Perf/Shared%20Theme.dart';
import 'package:last2/Store%20App/Cubits/Store%20state.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

import '../Services/All Products.dart';

class Storecubit extends Cubit<Storestate>{

  Storecubit() : super(inialstore());
  static Storecubit get(context)=>BlocProvider.of(context);
  bool Icontheme = false;
  IconData light = Icons.sunny;
  IconData dark = Icons.dark_mode;
  void Changethemedata({ bool ?fromshard}){
if(fromshard!=null){
  fromshard=Icontheme;
}
else{
  Icontheme=!Icontheme;
  Themeshared.PutData(key: 'Icontheme', value: Icontheme);
}


    emit(changetheme() );
  }
 List <ProductModel> ?products;
  AllProducts allProducts=AllProducts();

   Future getproduct()async{
    emit(loadingstore());
    try {
      print('Sucesssssssssssssssss');
      products=await allProducts.getallproduct();
      print(products);
      print('sucess product');
      emit(sucessstore());
    } on Exception catch (e) {
      print('Errror in cubit');
      print(e.toString());

      emit(errorstore());

    }


  }


}