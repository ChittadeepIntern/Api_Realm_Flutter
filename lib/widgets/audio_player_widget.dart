import 'package:api_realm/controllers/audio_player_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerWidget extends StatelessWidget {
  AudioPlayerWidget({super.key, required this.url});

  final String url;
  final AudioPlayerController _controller = Get.put(AudioPlayerController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return Text(
            _controller.currentPosition.value.toString().split('.').first,
            style: const TextStyle(fontSize: 20),
          );
        }),
        Obx(() {
          return Slider(
            value: _controller.currentPosition.value.inSeconds.toDouble(),
            min: 0.0,
            max: _controller.totalDuration.value.inSeconds.toDouble(),
            onChanged: (value) {
              _controller.seek(Duration(seconds: value.toInt()));
            },
          );
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.play_arrow),
              onPressed: () {
                _controller.play(
                    url);
              },
            ),
            IconButton(
              icon: const Icon(Icons.pause),
              onPressed: () {
                _controller.pause();
              },
            ),
            IconButton(
              icon: const Icon(Icons.stop),
              onPressed: () {
                _controller.stop();
              },
            ),
          ],
        ),
      ],
    );
  }
}
