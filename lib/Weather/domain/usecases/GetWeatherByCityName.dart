import 'package:weather_clean_arch/Weather/domain/entities/Weather.dart';
import 'package:weather_clean_arch/Weather/domain/repository/BaseWeatherRepository.dart';

class GetWeatherByCityName{
  final BaseWeatherRepository repository ;
  GetWeatherByCityName(this.repository);
  Future<Weather> execute(String cityName) async{
    return await repository.getWeatherByCityName(cityName);
  }

}