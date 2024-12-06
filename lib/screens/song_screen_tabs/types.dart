import 'package:api_realm/controllers/type_controller.dart';
import 'package:api_realm/entities/entities.dart';
import 'package:api_realm/service/api_services.dart';
import 'package:api_realm/service/db_services.dart';
import 'package:api_realm/widgets/audio_player_widget.dart';
import 'package:api_realm/widgets/lyrics_widget.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class Types extends StatelessWidget {
  Types({super.key, required this.cdata});

  final Cdata cdata;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TypeController>(
      init: TypeController(cdata),
      builder: (TypeController controller) {  
        return Center(
          child: Column(
            children: [
              if (cdata.islrc == true) AudioPlayerWidget(url: cdata.audiourl!),
              Text(cdata.islrc.toString()),
              LyricsWidget(lyrics: cdata.lyrics)
            ],
          ),
        );
      },
    );
  }
}
