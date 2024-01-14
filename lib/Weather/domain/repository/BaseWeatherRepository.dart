import '../entities/Weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByCityName(String cityName);
}