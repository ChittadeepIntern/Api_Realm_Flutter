import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerController extends GetxController {
  var isPlaying = false.obs;
  var currentPosition = Duration.zero.obs;
  var totalDuration = Duration.zero.obs;

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void onInit() {
    super.onInit();
    _audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.playing) {
        isPlaying.value = true;
      } else {
        isPlaying.value = false;
      }
    });

    _audioPlayer.onDurationChanged.listen((duration) {
      totalDuration.value = duration;
    });

    _audioPlayer.onPositionChanged.listen((position) {
      currentPosition.value = position;
    });
  }

  void play(String url) async {
    await _audioPlayer.play(UrlSource(url));
  }

  void pause() async {
    await _audioPlayer.pause();
  }

  void stop() async {
    await _audioPlayer.stop();
  }

  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }
}

