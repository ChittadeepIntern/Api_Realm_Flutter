import 'package:api_realm/model/cdata.dart';

class PersonModel {
  String? cat;
  int? id;
  String? title;
  String? isfav;
  List<CdataModel>? cdata;

  PersonModel({this.cat, this.id, this.title, this.isfav, this.cdata});

  PersonModel.fromJson(Map<String, dynamic> json) {
    cat = json['cat'];
    id = json['id'];
    title = json['title'];
    isfav = json['isfav'];
    if (json['cdata'] != null) {
      cdata = <CdataModel>[];
      json['cdata'].forEach((v) {
        cdata!.add(new CdataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cat'] = cat;
    data['id'] = id;
    data['title'] = title;
    data['isfav'] = isfav;
    if (this.cdata != null) {
      data['cdata'] = cdata!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return '''cat: $cat,
              id : $id,
              title : $title,
              isFav :$isfav,
              cdata :$cdata''';
  }
}
