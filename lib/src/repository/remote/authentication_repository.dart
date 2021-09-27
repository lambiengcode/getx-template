import 'dart:convert';

import 'package:get_boilerplate/src/repository/base_repository.dart';
import 'package:get_boilerplate/src/repository/remote/api_gateway.dart';

class AuthenticationRepository {
  Future<Map<String, dynamic>> login(String username, String password) async {
    var body = {
      "phone": username,
      "password": password,
    };
    var response = await HandleApis().post(ApiGateway.LOGIN, body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body)["data"];
    }
    return null;
  }

  Future<Map<String, dynamic>> register(
    String username,
    String password,
    String fullName,
  ) async {
    var body = {
      "phone": username,
      "password": password,
      "fullName": fullName,
    };

    var response = await HandleApis().post(ApiGateway.REGISTER, body);
    if (response.statusCode == 200) {
      return Map<String, dynamic>.from(
        jsonDecode(response.body)["data"],
      );
    }
    return null;
  }
}
