import 'package:flutter/material.dart';

class MusicController extends StatefulWidget {
  const MusicController({super.key});

  @override
  State<MusicController> createState() => MusicControllerState();
}

class MusicControllerState extends State<MusicController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(Icons.play_arrow)],
    );
  }
}
