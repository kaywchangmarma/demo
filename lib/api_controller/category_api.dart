import 'dart:convert';

import 'package:demo/api_controller/api_url.dart';
import 'package:http/http.dart' as http;

class CategoryApi {
  var jsonData;
  List _shops = [];

  Future fetch() async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiKeys.shops),
        headers: {'Accept': 'application/json'},
      );


      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        _shops.clear();
        _shops = jsonData;

        print('shop: ${_shops}');

        return _shops;

      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }

  }
}
