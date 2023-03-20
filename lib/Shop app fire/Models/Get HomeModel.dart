import 'dart:convert';

import 'package:last2/Shop%20app%20fire/Models/HomeModel.dart';

import 'package:http/http.dart'as http;

import '../../conts/colors.dart';

class GetHomeModel{
  String url='home';

  Future<List<HomeModel>>getallproduct()async{
    print('go');
  http.Response response=await http.get(Uri.parse('https://student.valuxapps.com/api/home'

  ));
  if (response.statusCode==200) {
    print('donne');

  List<dynamic>data=jsonDecode(response.body);
  List<HomeModel>ProductsList=[];
  for(int i=0; i<data.length;i++){

  ProductsList.add(
  HomeModel.fromJson(data[i])
  );
  }
  print(ProductsList);
  return ProductsList;

  }
  else{
 return [];
  }

  }
  }

