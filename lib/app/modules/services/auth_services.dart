import 'dart:convert';

import './globals.dart';
import 'package:http/http.dart' as http;

import 'globals.dart';

class AuthServices {
  // static Future<http.Response> register(
  //     String name, String email, String password) async {
  //   Map data = {"name": name, "email": email, "password": password};
  //   var body = json.encode(data);
  //   var url = Uri.parse(baseURL + 'auth/register');
  //   http.Response response = await http.post(
  //     url,
  //     headers: headers,
  //     body: body,
  //   );
  //   print(response.body);
  //   return response;
  // }

  static Future<http.Response> login(String email, String password) async {
    Map data = {
      "email": email,
      "password": password,
    };
    var body = json.encode(data);
    var url = Uri.parse('http://192.168.47.30:8000/api/auth/login');
    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}
