import 'package:dio/dio.dart';
import 'package:lavie/models/signup_model.dart';

abstract class LaVieApi {
  static const String baseUrl = 'https://lavie.orangedigitalcenteregypt.com';
  static const String signUp = '/api/v1/auth/signup';
  static const String logIn = '/api/v1/auth/signin';
}

class WebServices {
  late Dio dio;

  WebServices() {
    var options = BaseOptions(
        baseUrl: LaVieApi.baseUrl,
        connectTimeout: 5000,
        receiveTimeout: 3000,
        receiveDataWhenStatusError: true);
    dio = Dio(options);
  }
  // Future<Response> post(
  //   String url, {
  //   required data,
  //   Map<String, dynamic>? queryParameters,
  //   Options? options,
  // }) async {
  //   try {
  //     final Response response = await dio.post(
  //       url,
  //       data: data,
  //       queryParameters: queryParameters,
  //       options: options,
  //     );
  //     return response;
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }

  Future<Response> postSignUp(Map<String, dynamic> values) async {
    try {
      var response = await dio.post(LaVieApi.signUp, data: values);
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Response> postLogin(Map<String, dynamic> values) async {
    try {
      var response = await dio.post(LaVieApi.logIn, data: values);
      return response;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
