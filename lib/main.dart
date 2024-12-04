import 'dart:developer';

import 'package:api_realm/service/api_services.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:dio/dio.dart';

import 'model/data.dart';

Future<void> main() async {
  //runApp(const MyApp());

  DataModel? dataModel = await ApiServices().makePostRequest();
  if (dataModel != null) {
    DbServices().write(dataModel);
  }
}


/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/