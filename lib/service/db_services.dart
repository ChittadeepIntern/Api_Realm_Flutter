import 'dart:developer';

import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/model/data.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

class DbServices {
  late Realm realm;

  DbServices() {
    final config = Configuration.local(
        [Data.schema, Person.schema, Lyrics.schema, Cdata.schema]);
    realm = Realm(config);
  }

  void write(DataModel dataModel) {
    realm.write(() {
      var data = Data(
          l1ImamAliAs: (dataModel.l1ImamAliAs?.map((element) => Person(
                      element.id,
                      cat: element.cat,
                      cdata: element.cdata!.map((cdata) => Cdata(
                          type: cdata.type,
                          audiourl: cdata.audiourl,
                          islrc: cdata.islrc,
                          lyrics: cdata.lyrics!.map((lyric) => Lyrics(
                              time: lyric.time,
                              arabic: lyric.arabic,
                              translation: lyric.translation,
                              translitration: lyric.translitration)))),
                      isfav: element.isfav,
                      title: element.title)) ??
                  [])
              .cast(),
          sahifaSajjadia: (dataModel.sahifaSajjadia?.map((element) =>
                      Person(element.id, cat: element.cat, cdata: element.cdata!.map((cdata) => Cdata(type: cdata.type, audiourl: cdata.audiourl, islrc: cdata.islrc, lyrics: cdata.lyrics!.map((lyric) => Lyrics(time: lyric.time, arabic: lyric.arabic, translation: lyric.translation, translitration: lyric.translitration)))), isfav: element.isfav, title: element.title)) ??
                  [])
              .cast());

      /// have to fix the code above

      return realm.add(data);
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
}
