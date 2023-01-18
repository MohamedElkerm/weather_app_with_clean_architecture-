import 'package:weather_app_clean_arch/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required super.id,
    required super.cityName,
    required super.main,
    required super.description,
    required super.pressure,
  });


}
