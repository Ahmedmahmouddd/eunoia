// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:api_cache_manager/utils/cache_manager.dart';
import 'package:eunoia/features/sign_form/login/data/models/login_response_model.dart';
import 'package:eunoia/features/sign_form/login/presentation/views/login_page.dart';
import 'package:flutter/material.dart';

class SharedServices {
  static Future<bool> isLoggedIn() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");
    return isKeyExist;
  }

  static Future<LoginResponseModel?> loginDetails() async {
    var isCacheKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");

    if (isCacheKeyExist) {
      var cacheData = await APICacheManager().getCacheData("login_details");

      return loginResponseModel(cacheData.syncData);
    }
    return null;
  }

  static Future<void> setLoginDetails(
    LoginResponseModel loginResponse,
  ) async {
    APICacheDBModel cacheModel = APICacheDBModel(
      key: "login_details",
      syncData: jsonEncode(loginResponse.toJson()),
    );

    await APICacheManager().addCacheData(cacheModel);
  }

  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("login_details");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const LoginPage();
    }));
  }
}
