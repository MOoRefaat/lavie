import 'dart:convert';
import 'package:lavie/network/api.dart';
import '../models/signup_model.dart';

class MainRepo{
final WebServices _webServices;
late SignUpModel registerModel;
MainRepo({required WebServices webServices})
    :_webServices=webServices;
    Future<SignUpModel?> signUp({
       required String first,
      required String last,
      required String password,
      required String email
}) async{
      var model= await _webServices.postSignUp({
         "firstName":first,
         "lastName":last,
         "email":email,
         "password":password,
      });
      registerModel=SignUpModel.fromJson(model.data);
      print(registerModel.data?.user?.firstName);

      return registerModel;
    }

}