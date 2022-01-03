import 'dart:convert';
import 'package:demo/api_controller/api_url.dart';
import 'package:demo/view/login_screen/token.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  var jsonData;

 late String token;
  bool login = false;


  Future fetch(   String email, String password) async {
    try {
      http.Response response = await http.post(Uri.parse(ApiKeys.login),
          headers: {'Accept': 'application/json'},
          body: {'email': email, 'password': password});
      jsonData = jsonDecode(response.body);
      print('LoginApi.fetch $jsonData');
      if (response.statusCode == 200) {
        login = true;
        TokenManager.fromJson(jsonData);

        return login;
      } else {
        return login;
      }
    } catch (e) {
      return login;
    }
  }
}
