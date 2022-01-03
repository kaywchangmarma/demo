import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  TokenManager();

  saveToken(String token, Map customer, int expire) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('TOKEN', token);
    preferences.setString('EXPIRE', expire.toString());
    preferences.setString('CUSTOMER_ID', customer['id'].toString());
    preferences.setString('CUSTOMER_NAME', customer['name']);
    preferences.setString('CUSTOMER_EMAIL', customer['email']);
    preferences.setString('CUSTOMER_PHONE', customer['phone_number']);
    preferences.setString('CUSTOMER_BIRTHDAY', customer['birthdate']);
    preferences.setString('CUSTOMER_PASSWORD', customer['password']);
  }

  TokenManager.fromJson(Map json) {

    if (json.containsKey('token')) {
      saveToken(json['token'], json['customer'], json['expire']);
    }
  }

  String getToken() {
   late String token;
    SharedPreferences.getInstance().then((value) {
      token = value.getString('TOKEN')!;
    });
    return token;
  }

  String getCustomerId() {
   late String id;
    SharedPreferences.getInstance().then((value) {
      id = value.getString('CUSTOMER_ID')!;
    });
    print('TokenManager.getCustomerId $id');
    return id;
  }
}