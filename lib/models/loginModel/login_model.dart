import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? type;
  String? message;
  LoginData? data;

  LoginModel({this.type, this.message, this.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}

@JsonSerializable()
class LoginData {
  LoginUser? user;
  String? accessToken;
  String? refreshToken;

  LoginData({this.user, this.accessToken, this.refreshToken});
  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}

@JsonSerializable()
class LoginUser {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? imageUrl;
  dynamic address;
  String? role;

  LoginUser(
      {this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.imageUrl,
      this.address,
      this.role});

  factory LoginUser.fromJson(Map<String, dynamic> json) =>
      _$LoginUserFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserToJson(this);
}
