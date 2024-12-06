import 'dart:developer';

import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/model/data.dart';
import 'package:api_realm/utils/helper_methods.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

class DbServices {
  static final DbServices _instance = DbServices._initernal();

  static DbServices get instance => _instance;

  late Realm realm;

  DbServices._initernal() {
    final config = Configuration.local(
        [Data.schema, Album.schema, Lyrics.schema, Cdata.schema]);
    realm = Realm(config);
  }

  void write(DataModel dataModel) {
    realm.write(() {
      return realm.add(HelperMethods.convertDataModelToData(dataModel));
    });
  }

  Data getAllData() {
    return realm
        .all<Data>()
        .map((element) => Data(
            l1ImamAliAs: element.l1ImamAliAs,
            sahifaSajjadia: element.sahifaSajjadia))
        .first;
  }

  bool dataExists() {
    return realm
        .all<Data>()
        .map((element) => Data(
            l1ImamAliAs: element.l1ImamAliAs,
            sahifaSajjadia: element.sahifaSajjadia))
        .isNotEmpty;
  }

  void assignOfflineSongPathUpdate(
      {required String category,
      required int id,
      required String title,
      required String cdataType,
      required String offlineAudioPath}) {
    realm.write(() {
      final Album albumObject = realm
          .query<Album>('cat =="$category" AND id = $id AND title == "$title"')
          .first;

      // Find the specific CData object within the cdata array
      final cdataItem =
          albumObject.cdata.firstWhere((item) => item.type == cdataType);

      cdataItem.offlineAudioPath = offlineAudioPath;
    });
  }
}
