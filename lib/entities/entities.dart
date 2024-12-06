import 'package:realm/realm.dart';

part 'entities.realm.dart';

@RealmModel()
class _Data {
  List<_Album> l1ImamAliAs = [];
  List<_Album> sahifaSajjadia = [];
}

@RealmModel()
class _Album {
  String? cat;
  @PrimaryKey()
  int? id;
  String? title;
  String? isfav;
  List<_Cdata> cdata = [];
}

@RealmModel()
class _Cdata {
  String? type;
  String? audiourl;
  String? offlineAudioPath;
  List<_Lyrics> lyrics = [];
  bool? islrc;
}

@RealmModel()
class _Lyrics {
  String? time;
  String? arabic;
  String? translitration;
  String? translation;
}
