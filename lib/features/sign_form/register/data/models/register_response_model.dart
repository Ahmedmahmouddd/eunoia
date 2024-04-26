// To parse this JSON data, do
//
//     final registerResponseModel = registerResponseModelFromJson(jsonString);

// ignore_for_file: depend_on_referenced_packages

// ignore: unused_import
import 'package:meta/meta.dart';
import 'dart:convert';

RegisterResponseModel registerResponseModelFromJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

String registerResponseModelToJson(RegisterResponseModel data) =>
    json.encode(data.toJson());

class RegisterResponseModel {
  String status;
  String token;

  RegisterResponseModel({
    required this.status,
    required this.token,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      RegisterResponseModel(
        status: json["status"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "token": token,
      };
}
