// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Data extends _Data with RealmEntity, RealmObjectBase, RealmObject {
  Data({
    Iterable<Album> l1ImamAliAs = const [],
    Iterable<Album> sahifaSajjadia = const [],
  }) {
    RealmObjectBase.set<RealmList<Album>>(
        this, 'l1ImamAliAs', RealmList<Album>(l1ImamAliAs));
    RealmObjectBase.set<RealmList<Album>>(
        this, 'sahifaSajjadia', RealmList<Album>(sahifaSajjadia));
  }

  Data._();

  @override
  RealmList<Album> get l1ImamAliAs =>
      RealmObjectBase.get<Album>(this, 'l1ImamAliAs') as RealmList<Album>;
  @override
  set l1ImamAliAs(covariant RealmList<Album> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Album> get sahifaSajjadia =>
      RealmObjectBase.get<Album>(this, 'sahifaSajjadia') as RealmList<Album>;
  @override
  set sahifaSajjadia(covariant RealmList<Album> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Data>> get changes =>
      RealmObjectBase.getChanges<Data>(this);

  @override
  Stream<RealmObjectChanges<Data>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Data>(this, keyPaths);

  @override
  Data freeze() => RealmObjectBase.freezeObject<Data>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'l1ImamAliAs': l1ImamAliAs.toEJson(),
      'sahifaSajjadia': sahifaSajjadia.toEJson(),
    };
  }

  static EJsonValue _toEJson(Data value) => value.toEJson();
  static Data _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return Data(
      l1ImamAliAs: fromEJson(ejson['l1ImamAliAs'], defaultValue: const []),
      sahifaSajjadia:
          fromEJson(ejson['sahifaSajjadia'], defaultValue: const []),
    );
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Data._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Data, 'Data', [
      SchemaProperty('l1ImamAliAs', RealmPropertyType.object,
          linkTarget: 'Album', collectionType: RealmCollectionType.list),
      SchemaProperty('sahifaSajjadia', RealmPropertyType.object,
          linkTarget: 'Album', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Album extends _Album with RealmEntity, RealmObjectBase, RealmObject {
  Album(
    int? id, {
    String? cat,
    String? title,
    String? isfav,
    Iterable<Cdata> cdata = const [],
  }) {
    RealmObjectBase.set(this, 'cat', cat);
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'isfav', isfav);
    RealmObjectBase.set<RealmList<Cdata>>(
        this, 'cdata', RealmList<Cdata>(cdata));
  }

  Album._();

  @override
  String? get cat => RealmObjectBase.get<String>(this, 'cat') as String?;
  @override
  set cat(String? value) => RealmObjectBase.set(this, 'cat', value);

  @override
  int? get id => RealmObjectBase.get<int>(this, 'id') as int?;
  @override
  set id(int? value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get title => RealmObjectBase.get<String>(this, 'title') as String?;
  @override
  set title(String? value) => RealmObjectBase.set(this, 'title', value);

  @override
  String? get isfav => RealmObjectBase.get<String>(this, 'isfav') as String?;
  @override
  set isfav(String? value) => RealmObjectBase.set(this, 'isfav', value);

  @override
  RealmList<Cdata> get cdata =>
      RealmObjectBase.get<Cdata>(this, 'cdata') as RealmList<Cdata>;
  @override
  set cdata(covariant RealmList<Cdata> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Album>> get changes =>
      RealmObjectBase.getChanges<Album>(this);

  @override
  Stream<RealmObjectChanges<Album>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Album>(this, keyPaths);

  @override
  Album freeze() => RealmObjectBase.freezeObject<Album>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'cat': cat.toEJson(),
      'id': id.toEJson(),
      'title': title.toEJson(),
      'isfav': isfav.toEJson(),
      'cdata': cdata.toEJson(),
    };
  }

  static EJsonValue _toEJson(Album value) => value.toEJson();
  static Album _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
      } =>
        Album(
          fromEJson(ejson['id']),
          cat: fromEJson(ejson['cat']),
          title: fromEJson(ejson['title']),
          isfav: fromEJson(ejson['isfav']),
          cdata: fromEJson(ejson['cdata'], defaultValue: const []),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Album._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Album, 'Album', [
      SchemaProperty('cat', RealmPropertyType.string, optional: true),
      SchemaProperty('id', RealmPropertyType.int,
          optional: true, primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string, optional: true),
      SchemaProperty('isfav', RealmPropertyType.string, optional: true),
      SchemaProperty('cdata', RealmPropertyType.object,
          linkTarget: 'Cdata', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Cdata extends _Cdata with RealmEntity, RealmObjectBase, RealmObject {
  Cdata({
    String? type,
    String? audiourl,
    String? offlineAudioPath,
    Iterable<Lyrics> lyrics = const [],
    bool? islrc,
  }) {
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'audiourl', audiourl);
    RealmObjectBase.set(this, 'offlineAudioPath', offlineAudioPath);
    RealmObjectBase.set<RealmList<Lyrics>>(
        this, 'lyrics', RealmList<Lyrics>(lyrics));
    RealmObjectBase.set(this, 'islrc', islrc);
  }

  Cdata._();

  @override
  String? get type => RealmObjectBase.get<String>(this, 'type') as String?;
  @override
  set type(String? value) => RealmObjectBase.set(this, 'type', value);

  @override
  String? get audiourl =>
      RealmObjectBase.get<String>(this, 'audiourl') as String?;
  @override
  set audiourl(String? value) => RealmObjectBase.set(this, 'audiourl', value);

  @override
  String? get offlineAudioPath =>
      RealmObjectBase.get<String>(this, 'offlineAudioPath') as String?;
  @override
  set offlineAudioPath(String? value) =>
      RealmObjectBase.set(this, 'offlineAudioPath', value);

  @override
  RealmList<Lyrics> get lyrics =>
      RealmObjectBase.get<Lyrics>(this, 'lyrics') as RealmList<Lyrics>;
  @override
  set lyrics(covariant RealmList<Lyrics> value) =>
      throw RealmUnsupportedSetError();

  @override
  bool? get islrc => RealmObjectBase.get<bool>(this, 'islrc') as bool?;
  @override
  set islrc(bool? value) => RealmObjectBase.set(this, 'islrc', value);

  @override
  Stream<RealmObjectChanges<Cdata>> get changes =>
      RealmObjectBase.getChanges<Cdata>(this);

  @override
  Stream<RealmObjectChanges<Cdata>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Cdata>(this, keyPaths);

  @override
  Cdata freeze() => RealmObjectBase.freezeObject<Cdata>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'type': type.toEJson(),
      'audiourl': audiourl.toEJson(),
      'offlineAudioPath': offlineAudioPath.toEJson(),
      'lyrics': lyrics.toEJson(),
      'islrc': islrc.toEJson(),
    };
  }

  static EJsonValue _toEJson(Cdata value) => value.toEJson();
  static Cdata _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return Cdata(
      type: fromEJson(ejson['type']),
      audiourl: fromEJson(ejson['audiourl']),
      offlineAudioPath: fromEJson(ejson['offlineAudioPath']),
      lyrics: fromEJson(ejson['lyrics'], defaultValue: const []),
      islrc: fromEJson(ejson['islrc']),
    );
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Cdata._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Cdata, 'Cdata', [
      SchemaProperty('type', RealmPropertyType.string, optional: true),
      SchemaProperty('audiourl', RealmPropertyType.string, optional: true),
      SchemaProperty('offlineAudioPath', RealmPropertyType.string,
          optional: true),
      SchemaProperty('lyrics', RealmPropertyType.object,
          linkTarget: 'Lyrics', collectionType: RealmCollectionType.list),
      SchemaProperty('islrc', RealmPropertyType.bool, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Lyrics extends _Lyrics with RealmEntity, RealmObjectBase, RealmObject {
  Lyrics({
    String? time,
    String? arabic,
    String? translitration,
    String? translation,
  }) {
    RealmObjectBase.set(this, 'time', time);
    RealmObjectBase.set(this, 'arabic', arabic);
    RealmObjectBase.set(this, 'translitration', translitration);
    RealmObjectBase.set(this, 'translation', translation);
  }

  Lyrics._();

  @override
  String? get time => RealmObjectBase.get<String>(this, 'time') as String?;
  @override
  set time(String? value) => RealmObjectBase.set(this, 'time', value);

  @override
  String? get arabic => RealmObjectBase.get<String>(this, 'arabic') as String?;
  @override
  set arabic(String? value) => RealmObjectBase.set(this, 'arabic', value);

  @override
  String? get translitration =>
      RealmObjectBase.get<String>(this, 'translitration') as String?;
  @override
  set translitration(String? value) =>
      RealmObjectBase.set(this, 'translitration', value);

  @override
  String? get translation =>
      RealmObjectBase.get<String>(this, 'translation') as String?;
  @override
  set translation(String? value) =>
      RealmObjectBase.set(this, 'translation', value);

  @override
  Stream<RealmObjectChanges<Lyrics>> get changes =>
      RealmObjectBase.getChanges<Lyrics>(this);

  @override
  Stream<RealmObjectChanges<Lyrics>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Lyrics>(this, keyPaths);

  @override
  Lyrics freeze() => RealmObjectBase.freezeObject<Lyrics>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'time': time.toEJson(),
      'arabic': arabic.toEJson(),
      'translitration': translitration.toEJson(),
      'translation': translation.toEJson(),
    };
  }

  static EJsonValue _toEJson(Lyrics value) => value.toEJson();
  static Lyrics _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return Lyrics(
      time: fromEJson(ejson['time']),
      arabic: fromEJson(ejson['arabic']),
      translitration: fromEJson(ejson['translitration']),
      translation: fromEJson(ejson['translation']),
    );
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Lyrics._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Lyrics, 'Lyrics', [
      SchemaProperty('time', RealmPropertyType.string, optional: true),
      SchemaProperty('arabic', RealmPropertyType.string, optional: true),
      SchemaProperty('translitration', RealmPropertyType.string,
          optional: true),
      SchemaProperty('translation', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
