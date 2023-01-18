import 'package:weather_app_clean_arch/weather/data/data_sources/remote_data_source.dart';
import 'package:weather_app_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_app_clean_arch/weather/domain/repositories/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  late final RemoteDataSource remoteDataSource;
  @override
  Future<Weather> getWeatherByCityName(String cityName)async {
    return await remoteDataSource.getWeatherByCountryName(cityName);
  }

}