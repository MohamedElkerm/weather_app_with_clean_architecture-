import 'package:weather_app_clean_arch/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
