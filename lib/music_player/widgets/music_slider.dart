import 'package:flutter/material.dart';

class MusicSlider extends StatefulWidget {
  const MusicSlider({super.key});

  @override
  State<MusicSlider> createState() => MusicSliderState();
}

class MusicSliderState extends State<MusicSlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: 10,
      onChanged: (v) {
        //change volume
      },
      max: 100,
      min: 0,
      activeColor: Colors.red,
      inactiveColor: Colors.white,
    );
  }
}
