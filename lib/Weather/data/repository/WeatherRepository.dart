import 'package:weather_clean_arch/Weather/data/datasource/RemoteSource.dart';
import 'package:weather_clean_arch/Weather/domain/entities/Weather.dart';
import 'package:weather_clean_arch/Weather/domain/repository/BaseWeatherRepository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteSource remoteSource;

  WeatherRepository(this.remoteSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName)  async{
    return (await remoteSource.getWeatherByCityName(cityName))!;
  }


}