import 'package:dio/dio.dart';
import 'package:weather_app_clean_arch/core/utils/constants.dart';

class DioHelper {
  static late Dio dio;

  static dioInit() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({required String url })async{
    return await dio.get(url);
  }
}
