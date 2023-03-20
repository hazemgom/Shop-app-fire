import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;


import 'Wether Model.dart';
class WetherApi{

  Future<Object> Getwhether({required String Cityname})async{

  Uri url=Uri.parse('http://api.weatherapi.com/v1/forecast.json?key=61959fd819a94bab93d92807221812&q=${Cityname}&days=1&aqi=no&alerts=no'
  );

    http.Response response=await http.get(url);
    Map<String,dynamic>data=jsonDecode(response.body);
    print(response);
    if(response.statusCode==200){
      print('dddddddddddddddone');
      WetherModel wether=WetherModel.fromJson(data);
      print(wether);
      return wether;

    }
    else
    {
      print('10000000000000000000000000');
      return[];
    }





  }

}
//http://api.weatherapi.com/v1/forecast.json?key=61959fd819a94bab93d92807221812&q=London&days=1&aqi=no&alerts=no
