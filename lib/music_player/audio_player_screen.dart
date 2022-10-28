import "package:flutter/material.dart";
import './widget/music_controller.dart';
import './widget/music_image.dart';
import './widget/music_info_text.dart';
import './widget/music_slider.dart';
import './widget/volume_controller.dart';

class AudioPlayerScreen extends StatelessWidget {
  AudioPlayerScreen({super.key});

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
    )));
  }
}
