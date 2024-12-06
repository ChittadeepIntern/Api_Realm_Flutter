import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  late Data data;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() {
    data = DbServices.instance.getAllData();
  }
}
