import "package:flutter/material.dart";
import '../../common/classes.dart';

class RecentPlayTab extends StatelessWidget {
  RecentPlayTab({super.key, required this.recentPlayList});

  final List<MusicItem> recentPlayList;

  @override
  Widget build(BuildContext context) {
    return Text("recent play tab");
  }
}