import 'dart:convert';

import 'package:demo/api_controller/api_url.dart';
import 'package:http/http.dart' as http;

class SubCatApi {
  var jsonData;
  List _subShops = [];

  Future fetch(String id) async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiKeys.subShops+id),
        headers: {'Accept': 'application/json'},
      );
     var newjsondata = response.body.replaceAll(r'<br \>', r'\\n');

      if (response.statusCode == 200) {
        jsonData = jsonDecode(newjsondata);
        _subShops.clear();
        _subShops = jsonData;

        print('subcat: ${_subShops}');

        return _subShops;

      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e.toString());
    }

  }
}
