
import 'package:api_realm/screens/category_screen.dart';
import 'package:api_realm/service/api_services.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'model/data.dart';

Future<void> main() async {
  if (!DbServices.instance.dataExists()) {
    DataModel? dataModel = await ApiServices.instance.makePostRequest();
    if (dataModel != null) {
      DbServices.instance.write(dataModel);
    }
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: CategoryScreen(), debugShowCheckedModeBanner: false,);
    }
  }

