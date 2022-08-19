import 'dart:convert';
import 'package:lavie/network/api.dart';
import '../models/loginModel/login_model.dart';
import '../models/signup_model.dart';

class MainRepo {
  final WebServices _webServices;
  late SignUpModel registerModel;
  late LoginModel loginModel;
  MainRepo({required WebServices webServices}) : _webServices = webServices;
  Future<SignUpModel?> signUp(
      {required String first,
      required String last,
      required String password,
      required String email}) async {
    var model = await _webServices.postSignUp({
      "firstName": first,
      "lastName": last,
      "email": email,
      "password": password,
    });
    registerModel = SignUpModel.fromJson(model.data);
    print(registerModel.data?.user?.firstName);

    return registerModel;
  }

  Future<LoginModel> login(
      {required String password, required String email}) async {
    var model = await _webServices.postLogin({
      "email": email,
      "password": password
    });
    loginModel = LoginModel.fromJson(model.data);
    print(loginModel.data?.user?.firstName);

    return loginModel;
  }
}
