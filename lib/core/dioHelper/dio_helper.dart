import 'package:dio/dio.dart';

import '../../constants/end_point.dart';
import '../cacheHelper/cache_helper.dart';

class DioHelper {
  static Dio? dio;
  static const String baseUrl = base;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );
  }

//===============================================================
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      "Accept": "application/json",
      'Authorization': 'Bearer ${CacheHelper.getUserToken}',
    };
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

//===============================================================
  static Future<Response<dynamic>> postData({
    required String url,
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      "Accept": "application/json",
      'Authorization': 'Bearer ${CacheHelper.getUserToken}',
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
