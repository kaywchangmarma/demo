import 'dart:convert';

import 'package:demo/api_controller/api_url.dart';
import 'package:http/http.dart' as http;

class SliderApi {
  var jsonData;
  List _slider = [];

  Future fetch() async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiKeys.slider),
        headers: {'Accept': 'application/json'},
      );


      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        _slider.clear();
        _slider = jsonData;

        print('slider: $_slider');

        return _slider;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
