import 'package:cgj_player/common/classes.dart';
import "package:flutter/material.dart";

class WideMusicListTab extends StatelessWidget {
  WideMusicListTab({super.key, required this.musicList});

  final List<MusicItem> musicList;

  @override
  Widget build(BuildContext context) {
    return Text("wide music list tab");
  }
}