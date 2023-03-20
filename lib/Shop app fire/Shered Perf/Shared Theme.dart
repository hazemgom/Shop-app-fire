import 'package:shared_preferences/shared_preferences.dart';

class Themeshared{

 static SharedPreferences ?prefs;
 static init()async{
    prefs= await SharedPreferences.getInstance();
 }
 static Future<bool?>?PutData({
   required String key,
   required bool value
})async{
   return  await prefs?.setBool(key, value);
 }
 // getجاهزه معاك لكله برضو
 static dynamic getdata({required String key}){
   return prefs?.get(key)??false;
 }

 // اشتغل ب دي جاهزه ل كله
 static Future<bool>saveData({required String key,
   required dynamic value})async{

   if(value is String)
     {
       return await prefs!.setString(key, value);
     }
   if(value is int)
   {
     return await prefs!.setInt(key, value);
   }
   if(value is bool)
   {
     return await prefs!.setBool(key, value);
   }
   return prefs!.setDouble(key, value);

 }
}