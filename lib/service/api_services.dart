import 'dart:convert';
import 'dart:developer';

import 'package:api_realm/model/data.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Future<DataModel?> makePostRequest() async {
    final dio = Dio();

    const token = 'MTAtMDctMjAyNCAwNTo1MjozOGNZUlNldVpVaG5vZDhGNVM=';

    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.options.headers['Content-Type'] = 'application/json';

    final data = {
      'key1': 'value1',
      'key2': 'value2',
    };

    try {
      final response = await dio.post(
        'https://www.mafatihuljinan.org/wp-json/customapi/v1/munajat?userid=0&timezone=Asia/Kolkata&lang=english',
        data: data,
      );
      if (response.statusCode == 200) {
        log(DataModel.fromJson(response.data['data']).toString());
        return DataModel.fromJson(response.data['data']);
      }
    } catch (e) {
      log('Error: $e');
      return null;
    }
    return null;
  }
}
