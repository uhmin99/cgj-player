import 'package:flutter/material.dart';

class VolumeController extends StatefulWidget {
  const VolumeController({super.key});

  @override
  State<VolumeController> createState() => VolumeControllerState();
}

class VolumeControllerState extends State<VolumeController> {
  bool opened = false;

  @override
  Widget build(BuildContext context) {
    if (opened) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  opened = false;
                });
              },
              icon: const Icon(Icons.speaker_outlined)),
          RotatedBox(
              quarterTurns: 1,
              child: Slider(
                value: 10,
                onChanged: (v) {
                  //change volume
                },
                max: 100,
                min: 0,
                activeColor: Colors.blue,
                inactiveColor: Colors.white,
              ))
        ],
      );
    } else {
      return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        IconButton(
            onPressed: () {
              setState(() {
                opened = true;
              });
            },
            icon: const Icon(Icons.speaker_outlined))
      ]);
    }
  }
}
