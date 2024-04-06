import 'dart:convert';

import 'package:eunoia/Constants/exceptions.dart';
import 'package:eunoia/config/config.dart';
import 'package:eunoia/models/loginModels/login_request_model.dart';
import 'package:eunoia/models/loginModels/login_response_model.dart';
import 'package:eunoia/models/registerModels/register_request_model.dart';
import 'package:eunoia/models/registerModels/register_response_model.dart';
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
      print('body >>>> ${response.body}');

      await SharedServices.setLoginDetails(
        loginResponseModel(
          response.body,
        ),
      );

      return true;
    } else {
      print("exepction!!!");
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
        return RegisterResponseModel.fromJson(jsonDecode(response.body));
      } else {
        print('Registration failed');
        throw Exception('Registration failed: ${jsonDecode(response.body)['message']}');
      }
    } catch (e) {
      print('Exception occurred during registration: $e');
      throw e;
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
