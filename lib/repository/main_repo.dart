import 'dart:convert';
import 'package:lavie/di/getit.dart';
import 'package:lavie/network/api.dart';
import '../models/loginModel/login_model.dart';
import '../models/products/products_model.dart';
import '../models/signup_model.dart';

import '../network/cashe_helper.dart';

class MainRepo {
  final WebServices _webServices;
  late SignUpModel registerModel;
  LoginModel? loginModel;
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
      "password": password,
    });
    loginModel = LoginModel.fromJson(model.data);
    var token = loginModel?.data?.accessToken;
    print(token);
    CasheHelper.saveData(key: 'TOKEN', value: '$token');
    print(loginModel?.data?.user?.firstName);
    print(loginModel?.message);

    return loginModel!;
  }

  Future<List<ProductData>?> getProduct() async {
    var token = CasheHelper.getData(key: "TOKEN");
    print("***********************$token");
    var model = await _webServices.fetchProducts(token);
    ProductsModel productModel = ProductsModel.fromJson(model.data);
    List<ProductData>? productData=productModel.data?.toList();

    print(productModel);
    return productData;
  }
}
