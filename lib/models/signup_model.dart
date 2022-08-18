import 'package:json_annotation/json_annotation.dart';
part 'signup_model.g.dart';

@JsonSerializable()
class SignUpModel {
  String? type;
  String? message;
  SignUpData? data;

  SignUpModel({this.type, this.message, this.data});
  factory SignUpModel.fromJson(Map<String,dynamic> json)=> _$SignUpModelFromJson(json);
  Map<String,dynamic>toJson()=> _$SignUpModelToJson(this);

}
@JsonSerializable()
class SignUpData {
  SignUpUser? user;
  String? accessToken;
  String? refreshToken;

  SignUpData({this.user, this.accessToken, this.refreshToken});
  factory SignUpData.fromJson(Map<String,dynamic> json)=> _$SignUpDataFromJson(json);
  Map<String,dynamic>toJson()=> _$SignUpDataToJson(this);
}
@JsonSerializable()
class SignUpUser {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? imageUrl;
  dynamic address;
  String? role;

  SignUpUser(
      {this.userId,
        this.firstName,
        this.lastName,
        this.email,
        this.imageUrl,
        this.address,
        this.role});
  factory SignUpUser.fromJson(Map<String,dynamic> json)=> _$SignUpUserFromJson(json);
  Map<String,dynamic>toJson()=> _$SignUpUserToJson(this);
}