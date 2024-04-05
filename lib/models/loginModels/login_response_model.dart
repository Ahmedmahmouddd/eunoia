import 'dart:convert';

LoginResponseModel loginResponseModel(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  final String status;
  final String token;

  LoginResponseModel({required this.status, required this.token});

  factory LoginResponseModel.fromJson(Map<String,dynamic> json) {
    return LoginResponseModel(status: json["status"], token: json["token"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    return data;
  }
}




///////WE ARE STILL TO HANDLE FAILURE CASES, WE ONLY HANDLE SUCCESS CASES HERE