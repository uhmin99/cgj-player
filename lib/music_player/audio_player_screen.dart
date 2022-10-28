import 'package:cgj_player/common/classes.dart';
import "package:flutter/material.dart";
import 'widgets/music_controller.dart';
import 'widgets/music_image.dart';
import 'widgets/music_info_text.dart';
import 'widgets/music_slider.dart';
import 'widgets/volume_controller.dart';

class AudioPlayerScreen extends StatelessWidget {
  AudioPlayerScreen({super.key, required this.music});

  final MusicItem music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            VolumeController(),
            MusicImage(),
            SizedBox(height: 15),
            MusicInfoText(),
            SizedBox(height: 25),
            MusicSlider(),
            SizedBox(height: 20),
            MusicController(),
          ],
        )
      )
    );
  }
}
