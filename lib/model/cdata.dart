import 'package:api_realm/model/lyrics.dart';

class CdataModel {
	String? type;
	String? audiourl;
	List<LyricsModel>? lyrics;
	bool? islrc;

	CdataModel({this.type, this.audiourl, this.lyrics, this.islrc});

	CdataModel.fromJson(Map<String, dynamic> json) {
		type = json['type'];
		audiourl = json['audiourl'];
		if (json['lyrics'] != null) {
			lyrics = <LyricsModel>[];
			json['lyrics'].forEach((v) { lyrics!.add(LyricsModel.fromJson(v)); });
		}
		islrc = json['islrc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['type'] = type;
		data['audiourl'] = audiourl;
		if (lyrics != null) {
      data['lyrics'] = lyrics!.map((v) => v.toJson()).toList();
    }
		data['islrc'] = islrc;
		return data;
	}

   @override
  String toString() {
    return '''type: $type,
              audiourl : $audiourl,
              lyrics : $lyrics,
              islrc :$islrc''';
  }
}