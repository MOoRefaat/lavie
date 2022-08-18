import 'package:dio/dio.dart';
import 'package:lavie/models/signup_model.dart';

abstract class LaVieApi{
  static const String baseUrl='https://lavie.orangedigitalcenteregypt.com';
  static const String signUp='/api/v1/auth/signup';
}
class WebServices{
  late Dio dio;

  WebServices(){
    var options = BaseOptions(
        baseUrl:LaVieApi.baseUrl ,
        connectTimeout: 5000,
        receiveTimeout: 3000,
        receiveDataWhenStatusError: true
    );
    dio = Dio(options);
  }
    
  Future<Response> postSignUp(Map<String , dynamic> values)async{
   var response= await dio.post(LaVieApi.signUp,data: values);
    return response;
  }
}