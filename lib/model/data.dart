import 'dart:core';

import 'package:api_realm/model/person.dart';

class DataModel {
  List<AlbumModel>? l1ImamAliAs;
  List<AlbumModel>? sahifaSajjadia;

  DataModel({this.l1ImamAliAs, this.sahifaSajjadia});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['1 Imam Ali(as)'] != null) {
      l1ImamAliAs = <AlbumModel>[];
      json['1 Imam Ali(as)'].forEach((v) {
        l1ImamAliAs!.add(AlbumModel.fromJson(v));
      });
    }
    if (json['Sahifa Sajjadia'] != null) {
      sahifaSajjadia = <AlbumModel>[];
      json['Sahifa Sajjadia'].forEach((v) {
        sahifaSajjadia!.add(AlbumModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (l1ImamAliAs != null) {
      data['1 Imam Ali(as)'] = l1ImamAliAs!.map((v) => v.toJson()).toList();
    }
    if (sahifaSajjadia != null) {
      data['Sahifa Sajjadia'] = sahifaSajjadia!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return '''l1ImamAliAs : $l1ImamAliAs,
              sahifaSajjadia : $sahifaSajjadia''';
  }
}
