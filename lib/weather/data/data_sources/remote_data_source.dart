import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_app_clean_arch/core/utils/constants.dart';
import 'package:weather_app_clean_arch/core/utils/helper/dio_helper.dart';
import 'package:weather_app_clean_arch/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCountryName(String countryName) async {
    Response response = await DioHelper.getData(
        url: '/weather?q=$countryName&appid=${AppConstants.apiKey}').then((value){
          print('***---***');
          print(value.data.toString());
          return value;
    });
    return WeatherModel.fromJson(response.data);
  }
}
