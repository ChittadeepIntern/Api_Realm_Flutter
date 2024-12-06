import 'package:api_realm/entities/entities.dart';
import 'package:flutter/material.dart';

class LyricsWidget extends StatelessWidget {
  const LyricsWidget({super.key, required this.lyrics});

  final List<Lyrics> lyrics;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
            itemCount: lyrics.length,
            itemBuilder: (context, index) {
      return ListTile(
        title: Text(lyrics[index].arabic ?? "No title available"),
        isThreeLine: true,
        subtitle: Column(children: [
          Text(
              lyrics[index].translitration ?? "No transliteration available"),
          Text(lyrics[index].translation ?? "No translation available")
        ]),
      );
            },
          ),
    );
  }
}
