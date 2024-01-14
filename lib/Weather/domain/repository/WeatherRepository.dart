import '../entities/Weather.dart';

abstract class WeatherRepository{
  Future<Weather> getWeatherByCityName(String cityName);
}