import 'package:weather_app_clean_arch/weather/data/data_sources/remote_data_source.dart';
import 'package:weather_app_clean_arch/weather/domain/entities/weather.dart';
import 'package:weather_app_clean_arch/weather/domain/repositories/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCityName(String cityName)async {
    print('****************object');
    print(await baseRemoteDataSource.getWeatherByCountryName(cityName));
    return await baseRemoteDataSource.getWeatherByCountryName(cityName);
  }

}