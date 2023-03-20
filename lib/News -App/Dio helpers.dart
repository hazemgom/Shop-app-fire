import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Diohelper{
  static Dio? dio;
  static init(){
    dio=Dio(

     BaseOptions(
       baseUrl:  'https://student.valuxapps.com/api/',
       receiveDataWhenStatusError: true,
       headers: {
         'Content-Type':'application/json'
       }
     )
    );

  }

 static Future<Response>getdata({
  @required String? url,
    required Map<String,dynamic> query
})async{
   return await dio!.get(url!,queryParameters: query,);
  }

static Future<Response>postdata({
  @required String ?url,
   required Map<String,dynamic> query,
  required Map<String,dynamic> data
}){

    return dio!.post(url!,queryParameters: query,data: data);
}

}