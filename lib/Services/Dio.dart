import 'package:dio/dio.dart';

class DioHelper{
  static Dio ?dio;
static init()
{
  dio= Dio(
    BaseOptions(
      baseUrl: 'https://student.valuxapps.com/api/',
          receiveDataWhenStatusError: true,
      headers: {
        'Content-Type':'application/json'
      }
    )
  );



}
 static Future<Response?>getData
      ({
    required String ?url,
    Map<String,dynamic>?query
  })async{
    return await dio?.get( url!,queryParameters: query);
  }
  static Future<Response?>PostData
      ({
    required String ?url,
    Map<String,dynamic>?query,
    Map<String,dynamic>?data,
    String?token
  })async{
    return await dio?.post( url!,queryParameters: query,data: data);
  }

}