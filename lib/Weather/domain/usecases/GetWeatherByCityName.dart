import 'package:weather_clean_arch/Weather/domain/entities/Weather.dart';
import 'package:weather_clean_arch/Weather/domain/repository/WeatherRepository.dart';

class GetWeatherByCityName{
  final WeatherRepository repository ;
  GetWeatherByCityName(this.repository);
  Future<Weather> execute(String cityName) async{
    return await repository.getWeatherByCityName(cityName);
  }

}