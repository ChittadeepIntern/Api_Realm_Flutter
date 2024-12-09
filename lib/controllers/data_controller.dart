import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/model/data.dart';
import 'package:api_realm/service/api_services.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  late Data data;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {
    if (!DbServices.instance.dataExists()) {
      DataModel? dataModel = await ApiServices.instance.makePostRequest();
      if (dataModel != null) {
        await DbServices.instance.write(dataModel);
      }
      data = DbServices.instance.getAllData();
    }
  }
}
