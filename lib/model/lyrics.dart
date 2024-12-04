class LyricsModel {
  String? time;
  String? arabic;
  String? translitration;
  String? translation;

  LyricsModel({this.time, this.arabic, this.translitration, this.translation});

  LyricsModel.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    arabic = json['arabic'];
    translitration = json['translitration'];
    translation = json['translation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['arabic'] = arabic;
    data['translitration'] = translitration;
    data['translation'] = translation;
    return data;
  }

  @override
  String toString() {
    return '''time: $time,
    arabic : $arabic,
    transliteration : $translitration,
    translation : $translation''';
  }
}
