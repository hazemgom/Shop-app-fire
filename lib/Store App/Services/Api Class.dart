import 'dart:convert';

import 'package:http/http.dart'as http;
class Api{

  Future<dynamic>getapi({required String url}) async {
    http.Response response=await http.get(Uri.parse(url));
    if(response.statusCode==200){

      return jsonDecode(response.body);
    }else{

      print('errrrrrrrrror in $url');
    }

  }

}