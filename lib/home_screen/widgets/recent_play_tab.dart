import "package:flutter/material.dart";
import '../../common/classes.dart';

class RecentPlayTab extends StatelessWidget {
  RecentPlayTab({super.key, required this.recentPlayList, this.marginTop=0, this.marginBottom=0});

  final List<MusicItem> recentPlayList;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Text("recent play tab");
  }
}