import 'package:cgj_player/common/classes.dart';
import "package:flutter/material.dart";

class WideMusicListTab extends StatelessWidget {

  WideMusicListTab({super.key, required this.musicList, this.marginTop=0, this.marginBottom=0});

  final List<MusicItem> musicList;
  final double marginBottom;
  final double marginTop;

  @override
  Widget build(BuildContext context) {
    return Text("wide music list tab");
  }
}