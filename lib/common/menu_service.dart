import 'dart:convert';

import 'package:flutter/services.dart';

class MenuService {
  Future<Map<String, dynamic>> loadMenuData() async {
    final jsonString =
        await rootBundle.loadString('lib/localdata/medresto_data.json');
    return json.decode(jsonString);
  }
}
