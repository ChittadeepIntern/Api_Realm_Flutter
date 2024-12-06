import 'dart:convert';
import 'dart:developer';

import 'package:api_realm/model/data.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class ApiServices {
  static final ApiServices _instance = ApiServices._internal();

  static ApiServices get instance => _instance;

  ApiServices._internal();

  final dio = Dio();

  Future<DataModel?> makePostRequest() async {
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

  Future<String?> downloadMP3(String url, String filename) async {
    try {
      // Get the application's cache directory
      final directory = await getTemporaryDirectory();
      final savePath = '${directory.path}/$filename';

      await dio.download(
        url,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            double progress = (received / total) * 100;
            log("Download progress: ${progress.toStringAsFixed(0)}%");
          }
        },
      );
      log("data successfullly downloaded in $savePath");
      return savePath;
    } catch (e) {
      log('downolading issue $e');
      return null;
    }
  }
}
