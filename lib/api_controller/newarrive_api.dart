import 'dart:convert';
import 'package:demo/api_controller/api_url.dart';
import 'package:http/http.dart' as http;

class NewArriveApi {
  var jsonData;
  List _newArrivals = [];

  Future fetch() async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiKeys.newArrivals),
        headers: {'Accept': 'application/json'},
      );


      print(response.statusCode);

      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        _newArrivals.clear();
        _newArrivals = jsonData;

        print('new: ${_newArrivals}');

        return _newArrivals;

      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }

  }
}