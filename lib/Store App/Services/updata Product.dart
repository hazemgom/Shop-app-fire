import 'dart:convert';


import 'package:last2/Store%20App/Services/Product%20Model.dart';
import 'package:http/http.dart'as http;
class Addproductservices{

  Future<dynamic>Updataproduct({required String title,required String price,
    required String image,required String descrption,required String category,required int id})async{
    http.Response response=await http.put(Uri.parse('https://fakestoreapi.com/products/$id',),body: {
      'title': 'test product',
      'price': '13.5',
      'description': 'lorem ipsum set',
      'image': 'https://i.pravatar.cc',
      'category': 'electronic'
    },headers: {

      'Authorization':'Bearer'
    });

    if (response.statusCode==200) {
      Map<String,dynamic>data=jsonDecode(response.body);
      return ProductModel.fromJson(data);
    }
    else{
      print('Errrrrrrrrrror in add product $response');
    }

  }

}