import 'dart:developer';

import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/service/api_services.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeController extends GetxController {
  late final Cdata cdata;

  TypeController(this.cdata);

  @override
  Future<void> onInit() async {
    if (cdata.offlineAudioPath == null && cdata.islrc == true) {
      String? path = await ApiServices.instance
          .downloadMP3(cdata.audiourl!, cdata.audiourl!.split('/').last);

      log("data downloaded in $path");

      //DbServices.instance.assignOfflineSongPathUpdate(category, album, newPath)
    }
    super.onInit();
  }
}
