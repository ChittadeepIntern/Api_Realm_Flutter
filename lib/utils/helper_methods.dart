import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/model/cdata.dart';
import 'package:api_realm/model/data.dart';
import 'package:api_realm/model/lyrics.dart';
import 'package:api_realm/model/person.dart';

abstract class HelperMethods {
  static Data convertDataModelToData(DataModel dataModel) {
    return Data(
        l1ImamAliAs: (dataModel.l1ImamAliAs
                ?.map((element) => _personModelToPerson(element)) ??
            []),
        sahifaSajjadia: (dataModel.sahifaSajjadia
                ?.map((element) => _personModelToPerson(element)) ??
            []));
  }

  static Album _personModelToPerson(AlbumModel element) {
    return Album(element.id,
        cat: element.cat,
        cdata: element.cdata!.map((cdata) => _cdataModelToCdata(cdata)),
        isfav: element.isfav,
        title: element.title);
  }

  static Cdata _cdataModelToCdata(CdataModel cdata) {
    return Cdata(
        type: cdata.type,
        audiourl: cdata.audiourl,
        islrc: cdata.islrc,
        lyrics: cdata.lyrics!.map((lyric) => _lyricModelToLyric(lyric)));
  }

  static Lyrics _lyricModelToLyric(LyricsModel lyric) {
    return Lyrics(
        time: lyric.time,
        arabic: lyric.arabic,
        translation: lyric.translation,
        translitration: lyric.translitration);
  }

/*
  static DataModel convertDataToDataModel(Data data) {
    return DataModel(l1ImamAliAs: (
      data.l1ImamAliAs
              .map((element) => PersonModel(
                    id: element.id,
                    cat: element.cat,
                    cdata: element.cdata
                        .map((cdata) => CdataModel(
                              type: cdata.type,
                              audiourl: cdata.audiourl,
                              islrc: cdata.islrc,
                              lyrics: cdata.lyrics
                                  .map((lyric) => LyricsModel(
                                        time: lyric.time,
                                        arabic: lyric.arabic,
                                        translation: lyric.translation,
                                        translitration: lyric.translitration,
                                      ))
                                  .toList(),
                            ))
                        .toList(),
                    isfav: element.isfav,
                    title: element.title,
                  ))
              .toList() ??
          [],
      sahifaSajjadia: (
        data.sahifaSajjadia
                .map((element) => PersonModel(
                      id: element.id,
                      cat: element.cat,
                      cdata: element.cdata
                          .map((cdata) => CdataModel(
                                type: cdata.type,
                                audiourl: cdata.audiourl,
                                islrc: cdata.islrc,
                                lyrics: cdata.lyrics
                                    .map((lyric) => LyricsModel(
                                          time: lyric.time,
                                          arabic: lyric.arabic,
                                          translation: lyric.translation,
                                          translitration: lyric.translitration,
                                        ))
                                    .toList(),
                              ))
                          .toList(),
                      isfav: element.isfav,
                      title: element.title,
                    ))
                .toList() ??
            [],
      )
    ));
  }
*/
}
