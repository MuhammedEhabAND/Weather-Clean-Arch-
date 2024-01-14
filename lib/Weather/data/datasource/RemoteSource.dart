import 'dart:convert';

import 'package:weather_clean_arch/core/utils/Constants.dart';

import '../models/WeatherModel.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteSource {
  Future<WeatherModel?> getWeatherByCityName(String cityName);
}
class RemoteSource implements BaseRemoteSource{
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try{
      var response  = await Dio().get('${Constants.baseUrl}/weather?q=$cityName&appid=${Constants.appId}');
      return WeatherModel.fromJson(json.decode(response.data));

    }catch(e){
      return null;
    }

  }
}