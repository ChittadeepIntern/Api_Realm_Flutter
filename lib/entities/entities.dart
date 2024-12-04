import 'package:realm/realm.dart'; 

part 'entities.realm.dart';

@RealmModel()
class _Data{
  List<_Person> l1ImamAliAs = [];
  List<_Person> sahifaSajjadia = [];
}

@RealmModel()
class _Person{
  String? cat;
  @PrimaryKey()
  int? id;
  String? title;
  String? isfav;
  List<_Cdata> cdata = [];
}

@RealmModel()
class _Cdata{
  String? type;
	String? audiourl;
	List<_Lyrics> lyrics = [];
	bool? islrc;
}

@RealmModel()
class _Lyrics{
  String? time;
  String? arabic;
  String? translitration;
  String? translation;
}