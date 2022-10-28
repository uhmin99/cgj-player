import "package:flutter/material.dart";

class PlayListTab extends StatelessWidget {
  PlayListTab({super.key, this.marginTop=0, this.marginBottom=0});

  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Text("playlist tab");
  }
}