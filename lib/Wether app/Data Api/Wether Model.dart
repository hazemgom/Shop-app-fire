import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WetherModel {
  String data;
  double temp;
  double maxtemp;
  double mintemp;
  String weatherStateName;


  WetherModel(
      {required this.data, required this.temp, required this.weatherStateName, required this.maxtemp, required this.mintemp});

  factory WetherModel.fromJson(dynamic data){
    var Jsondata = data['forecast']['forecastday'][0]['day'];
    return WetherModel(data: data['location']['localtime'],
        temp: Jsondata['avgtemp_c'],
        weatherStateName: Jsondata['condition']['text'],
        maxtemp: Jsondata['maxtemp_c'],
        mintemp: Jsondata['mintemp_c']);
  }

  @override
  String toString() {

    return 'tem=$temp   min=$mintemp   data=$data';
  }

  MaterialColor getThemeColor() {
    if (weatherStateName == 'Sunny' || weatherStateName == 'Clear' ||
        weatherStateName == 'partly cloudy') {
      return Colors.orange;
    } else if (

    weatherStateName == 'Blizzard' ||
        weatherStateName == 'Patchy snow possible' ||
        weatherStateName == 'Patchy sleet possible' ||
        weatherStateName == 'Patchy freezing drizzle possible' ||
        weatherStateName == 'Blowing snow') {
      return Colors.blue;
    } else
    if (weatherStateName == 'Freezing fog' || weatherStateName == 'Fog' ||
        weatherStateName == 'Heavy Cloud' || weatherStateName == 'Mist' ||
        weatherStateName == 'Fog') {
      return Colors.blueGrey;
    } else if (weatherStateName == 'Patchy rain possible' ||
        weatherStateName == 'Heavy Rain' ||
        weatherStateName == 'Showers	') {
      return Colors.blue;
    } else if (weatherStateName == 'Thundery outbreaks possible' ||
        weatherStateName == 'Moderate or heavy snow with thunder' ||
        weatherStateName == 'Patchy light snow with thunder' ||
        weatherStateName == 'Moderate or heavy rain with thunder' ||
        weatherStateName == 'Patchy light rain with thunder') {
      return Colors.deepPurple;
    } else {
      return Colors.orange;
    }
  }
}
