import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Curd {
  getData(String url) async {
    var request = await http.get(Uri.parse(url));
    if (request.statusCode == 200) {
      if (kDebugMode) {
        print("status is Success ");
      }
      return jsonDecode(request.body);
    } else {
      if (kDebugMode) {
        print("Failure");
        return null;
      }
    }
  }
}
