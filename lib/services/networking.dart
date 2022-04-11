import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'location.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper({@required this.url});
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}

// print(condition);
// print(temperature);
// print(cityName);
