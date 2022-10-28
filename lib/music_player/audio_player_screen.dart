import 'package:cgj_player/common/classes.dart';
import "package:flutter/material.dart";
import 'widgets/music_controller.dart';
import 'widgets/music_image.dart';
import 'widgets/music_info_text.dart';
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
            MusicImage(imageLink: music.imageLink),
            SizedBox(height: 15),
            MusicInfoText(title: music.title, artist: music.artist,),
            SizedBox(height: 25),
            MusicController(music: music,),
            SizedBox(height: 20),
          ],
        )
      )
    );
  }
}
