import 'dart:convert';

import 'package:demo/api_controller/api_url.dart';
import 'package:http/http.dart' as http;

class FeaturedApi {
  var jsonData;
  List _featuredProducts = [];

  Future fetch() async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiKeys.featuredProducts),
        headers: {'Accept': 'application/json'},
      );


      print(response.statusCode);

      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        _featuredProducts.clear();
        _featuredProducts = jsonData;

        print('featuredProducts: ${_featuredProducts[0]}');

        return _featuredProducts;

      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }

  }
}
