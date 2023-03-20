import 'dart:convert';

import 'package:http/http.dart'as http;
class Allcategory{
  
  Future<List<dynamic>>allcategory()async{
    
    http.Response response=await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    List<dynamic>data=jsonDecode(response.body);
    return data;
  }

}