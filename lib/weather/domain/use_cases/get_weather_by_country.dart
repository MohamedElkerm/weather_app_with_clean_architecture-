import 'package:weather_app_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_app_clean_arch/weather/domain/repositories/weather_repository.dart';

class GetWeatherByCountry {
  final WeatherRepository repository;
  GetWeatherByCountry({required this.repository});
  Future<Weather> execute(String cityName)async{
    return await repository.getWeatherByCityName(cityName);
  }

}