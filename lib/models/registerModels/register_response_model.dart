import 'dart:convert';

RegisterResponseModel registerResponseModel(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  String? status;
  String? token;

  RegisterResponseModel({this.status, this.token});

  RegisterResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    return data;
  }
}




///////WE ARE STILL TO HANDLE FAILURE CASES, WE ONLY HANDLE SUCCESS CASES HERE