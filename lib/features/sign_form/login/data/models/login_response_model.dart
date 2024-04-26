// ignore_for_file: prefer_collection_literals

import 'dart:convert';

LoginResponseModel loginResponseModel(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  final String status;
  final String token;

  LoginResponseModel({required this.status, required this.token});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(status: json["status"], token: json["token"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['token'] = token;
    return data;
  }
}
