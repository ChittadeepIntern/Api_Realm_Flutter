import 'dart:developer';

import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/service/api_services.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeController extends GetxController {
  late final Cdata cdata;
  late final Album album;

  late final offlineAudioPath;

  TypeController({
    required this.album,
    required this.cdata,
  });

  @override
  Future<void> onInit() async {
    if (cdata.offlineAudioPath == null && cdata.islrc == true) {
      String? path = await ApiServices.instance
          .downloadMP3(cdata.audiourl!, cdata.audiourl!.split('/').last);

      log("data downloaded in $path");

      if (path != null) {
        DbServices.instance.assignOfflineSongPath(
            category: album.cat!,
            id: album.id!,
            title: album.title!,
            cdataType: cdata.type!,
            offlineAudioPath: path);

        log("data successfully written in db");
      }
    } else {
      log("Audio Url is already saved or not it is a translation");
    }
    super.onInit();
  }
}
