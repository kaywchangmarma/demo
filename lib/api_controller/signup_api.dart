import 'dart:convert';
import 'package:demo/api_controller/api_url.dart';
import 'package:http/http.dart' as http;

class SignupApi {
  var jsonData;
  bool success = false;


  Future fetch(   String name,
   String phone,
   String email,
   String password,
   String confirmPassword) async {
    try {
      http.Response response =
      await http.post(Uri.parse(ApiKeys.registration), headers: {
        'Accept': 'application/json'
      }, body: {
        'name': name,
        'phone_number': phone,
        'email': email,
        'password': password,
        'password_confirmation': confirmPassword,
      });
      jsonData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (jsonData['msg'] == 'Registration successful') {
          success = true;
        }

        return success;
      } else {
//        throw Exception('Failed to load data');

        return success;
      }
    } catch (e) {
//      throw Exception(e.toString());
      return success;
    }
  }
}
