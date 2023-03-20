import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:last2/Store%20App/Services/Product%20Model.dart';
import 'package:http/http.dart'as http;
class AllProducts{


  Future<List<ProductModel>>getallproduct()async{
    http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode==200) {

      List<dynamic>data=jsonDecode(response.body);
      List<ProductModel>ProductsList=[];
      for(int i=0; i<data.length;i++){

        ProductsList.add(
          ProductModel.fromJson(data[i])
        );
      }
      return ProductsList;
    }
    else{
      print('Errrrrror in All products');
    }
return[];
  }
}