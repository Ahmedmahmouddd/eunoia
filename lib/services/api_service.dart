import 'dart:convert';

import 'package:eunoia/core/Constants/exceptions.dart';
import 'package:eunoia/core/config/config.dart';
import 'package:eunoia/core/constants/cash_storage.dart';
import 'package:eunoia/features/sign_form/login/data/models/login_request_model.dart';
import 'package:eunoia/features/sign_form/register/data/models/register_request_model.dart';
import 'package:eunoia/features/sign_form/register/data/models/register_response_model.dart';
import 'package:eunoia/services/shared_services.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();

  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String> requestHeaders = {'Content-type': 'Application/json'};

    var url = Uri.parse('${config.apiURL}${config.loginAPI}');
    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      var responseData = jsonDecode(response.body);
      CacheData.setData('token', responseData["token"]);
      return true;
    } else {
      throw ServerException(jsonDecode(response.body)["message"]);
    }
  }

  static Future<RegisterResponseModel> register(
      RegisterRequestModel model) async {
    try {
      Map<String, String> requestHeaders = {'Content-type': 'application/json'};
      var url = Uri.parse('${config.apiURL}${config.registerAPI}');
      var response = await http.post(
        url,
        headers: requestHeaders,
        body: jsonEncode(model.toJson()),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseData = jsonDecode(response.body);
        CacheData.setData('token', responseData["token"]);
        return RegisterResponseModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception(
            'Registration failed: ${jsonDecode(response.body)['message']}');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<String> getUserProfile() async {
    var loginDetails = await SharedServices.loginDetails();

    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Authorization': 'Basic ${loginDetails!.token}'
    };

    var url = Uri.http(config.apiURL, config.userProfileAPI);

    var response = await client.get(
      url,
      headers: requestHeaders,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
