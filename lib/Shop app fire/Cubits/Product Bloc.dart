import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last2/Shop%20app%20fire/Cubits/Product%20State.dart';
import 'package:last2/Shop%20app%20fire/Models/Get%20HomeModel.dart';
import 'package:last2/Shop%20app%20fire/Models/HomeModel.dart';
import 'package:last2/Shop%20app%20fire/Shered%20Perf/Shared%20Theme.dart';
import 'package:last2/Store%20App/Cubits/Store%20state.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';

import '../../Store App/Services/All Products.dart';
import '../Models/Cart Model.dart';


class Productcubit extends Cubit<Productstate>{

  Productcubit() : super(inialproduct());
  static Productcubit get(context)=>BlocProvider.of(context);

List<ProductModel>products=[];
List<HomeModel>homemodel=[];
 ProductModel ?productModel;
Map<int,String>fav={};
Map<String,Cartmodel>cartproduct={};
Map<String,Cartmodel>get Getcart{
  return {...cartproduct};
  }

  AllProducts allProducts=AllProducts();

  Future getproduct()async{
    emit(Loadingproduct());
    try {

      products=await allProducts.getallproduct();


      emit(Productsuccess());
    } on Exception catch (e) {

      print(e.toString());

      emit(Producterror());

    }


  }
  double Totalprice=0.0;
  int count=0;
  void addtocart(ProductModel product){
    products.add(product);
    Totalprice+=product.price;
    emit(Addtocart());
  }
  int get Countnum{
   return count=products.length;

  }
  void addproduct(){
    count++;
    emit(Addnum());
  }
  void mincproduct(){
    count--;
    emit(removenum());
  }
  void Addproducttocart( ProductModel productModel){

    products.add(productModel);
    emit(Addproduct());
  }
  List<ProductModel>get Items{
    return products;
  }
  Future getdata()async {
    try {
      print('Sucesssssssssssssssss');
      homemodel = await GetHomeModel().getallproduct();

      print('sucess product');
      emit(Sucessdata());
    } on Exception catch (e) {
      print('Errror in cubit');
      print(e.toString());

      emit(Errordata());
    }


  }}